# ANSELpx

[ANSELpx live][heroku]

[heroku]: https://anselpx.herokuapp.com/

![alt text](https://github.com/rossmorey/ANSELpx/blob/master/docs/wireframes/Login%20Design.png "Login Page Mock-up")

ANSELpx is a single-page, full-stack web application with a multi-page look and feel. Based on the popular photo-sharing website, 500px, ANSELpx is implemented using a Ruby on Rails backend, PostgreSQL database, and uses the front-end React/Redux javascript framework.

Users can sign up for an account, create photos with associated meta-data, interact with other users (via follows), and click on an image for a full-screen user experience. The site is set up for a guest user to be authenticated and redirected to the home-page feed with one click.

## Features & Implementation

### Single-Page App

Despite the feel of a multi-page app, ANSELpx functions using a single, initial HTTP request. All other information is served via AJAX calls to the Rails backend. The signed-in user is "bootstrapped" into the initial page render so that their session persists as they browse the site -- even if they initiate a hard refresh.

```html
<!-- app/views/static_pages/root.html.erb -->

<script id="bootstrap-current-user" type="text/javascript">
  <% if logged_in? %>
    window.currentUser = <%= render("api/users/full_user.json.jbuilder",
      user: current_user).html_safe %>
  <% end %>
</script>
```

### Uploading and Serving Photos

Server-side, photos are stored in a single table. When photos are requested from the feed (main) page, a subset of all photos are fetched; when photos are fetched from a user page, only that user's images are served. The `PhotosController` parses these requests and delivers the appropriate images.

When a user uploads a new image, only the image's URL is stored in the application's database. ANSELpx utilizes a custom upload form integrating features like modal, drag-and-drop zone, CSS animation, and direct connection to Cloudinary's photo API.

![alt text](http://res.cloudinary.com/dhorsi7vf/image/upload/v1473444578/upload_form_tpglcs.png "Upload Form")

The upload request to Cloudinary takes a callback, which, on success, returns the image's dimensions and the URL pointing to the asset on Cloudinary's server. When this information, plus user-inputted meta-data, reaches Rails, the Photos model creates additional URLs pointing to smaller versions of the uploaded image. These smaller images, plus Cloudinary's high-speed image delivery improves site load-time markedly.

```ruby
# app/models/photo.rb

class Photo < ActiveRecord::Base
  # [...]

  after_initialize :ensure_fields

  def make_new_url(transform, url)
    result = ""
    url.each_char do |char|
      result << char
      if result.include?("upload") && !result.include?(transform)
        result << transform
      end
    end
    result
  end

  def ensure_fields
    self.thumbnail_url ||= make_new_url("/c_scale,h_320",
      self.photo_img_url)
    self.mini_square_url ||= make_new_url("/w_50,h_50,c_fill,g_east",
      self.photo_img_url)
    self.save
  end
end
```

By storing `width` and `height` parameters of the original image in the database, it's easy to calculate the aspect ratio of smaller versions of the image on the front end. This becomes necessary when serving images to the user page.

The ANSELpx user page includes an npm package based on Flickr's open-source Justified Layout. This allows images to be dynamically re-ordered and re-sized, creating a mosaic of photographs.

![alt text](http://res.cloudinary.com/dhorsi7vf/image/upload/v1473444579/justified_gallery_wrcstt.png "Justified Layout")

### Users & Authentication

Users can login or create accounts via the initial ANSELpx landing page. The `SessionForm` component listens for value change of the login form fields and calls `setState` on every keystroke. `SessionForm` uses Redux's connect function. When the user submits their credentials, the container invokes the `processForm` callback which points to `login` or `signup` action creator based on the formType.

The login/signup actions trigger similarly-named POST API calls from the `SessionMiddleware` sending the user's credentials to the Rails server. The User model stores a `password_hash` (via BCrypt) and `session_token` in the database, but does not store sensitive password information.

The Rails controller logs the user in, constructs a JSON response (using JBuilder), and renders the response. The response triggers a success callback from the initial login/signup request. User state is then set in the frontend via the `session_reducer`.

### Follows

The Follow feature uses a self-join table connecting the `User` model to itself. This requires two associations from the User model to the join table in addition to two associations from the join table back to the model -- one for followers and one for users being followed.

The `FollowBox` frontend component renders a combination of users followed by the `currentUser` and users who aren't followed by the `currentUser`. In order display a follow button with the correct status, the `FollowButton` component iterates through users followed by the `currentUser` to see whether there's a match:

```javascript
// frontend/components/follow_button/follow_button.jsx

componentDidMount() {
    this.setState({loading: false, followed: false});

    let followed = this.props.currentUser.followed;

    if (followed && followed.length !== 0) {
      followed.forEach((followedUser) => {
        if (followedUser.id === this.props.buttonUserId) {
          this.setState({followed: true});
        }
      });
    }
  }
```

`FollowBox` buttons use CSS hover effects to create an interactive, modern feel. ANSELpx's UI is based almost entirely on the UI of 500px.

![alt text](http://res.cloudinary.com/dhorsi7vf/image/upload/v1473444773/user_buttons_w88kte.png "Follow Buttons")

## Future Directions for the Project

As I continue to develop this project, I plan to implement several new features, outlined below:

### Infinity Scrolling

There are several React NPM packages that implement this feature easily. An event listener will trigger when the user reaches a particular page height. This will send a GET request for the next 20 images from the server. This should further decrease page load time if fewer images are served simultaneously.

### Tagging & Search

In order to implement search, I'll first need to add tags to photos. On image upload, the user will specify one or more tags to associate with the image. In the database, I'll create Tag and Tagging models since Tags/Photos is a many-many relationship. Once tags is set up, search will be fairly straight-forward. I'll add a new form component to the frontend that will make an API GET request onUpdate each time the user types a character.

### Comments & Likes

To increase the site content's interactivity, I plan to add commenting and likes to all photos. Instead of using a lightbox, onClick will trigger a modal pop-up displaying the (larger) image on the left and comment feed on the right. I also plan to add another join table to the database linking users to photos via Likes. The implementation will be similar to user-follows, if not simpler, since there's no self-joining.
