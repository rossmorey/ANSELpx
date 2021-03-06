#ANSELpx

![alt text](https://github.com/rossmorey/ANSELpx/blob/master/docs/wireframes/Login%20Design.png "Login Page Mock-up")

Heroku Link (coming soon)

##Minimum Viable Product
ANSELpx is a web application inspired by 500px.  It features stunning landscape photography and is built on Ruby on Rails and React.  By the end of week 9, this app will include these bug-free, fully-styled, MVP features:

- [x] Hosting on Heroku
- [x] New account creation, login, and guest/demo login
- [x] Photo posting
- [x] Follow/unfollow of users
- [x] Homepage Feed
- [x] Profile page
- [x] Production [README](https://github.com/rossmorey/ANSELpx/blob/master/README.md)

##Design Docs
- [View Wireframes](https://github.com/rossmorey/ANSELpx/blob/master/docs/wireframes/)
- [React Components](https://github.com/rossmorey/ANSELpx/blob/master/docs/component-hierarchy.md)
- [API endpoints](https://github.com/rossmorey/ANSELpx/blob/master/docs/api-endpoints.md)
- [DB Schema](https://github.com/rossmorey/ANSELpx/blob/master/docs/schema.md)
- [Redux Structure](https://github.com/rossmorey/ANSELpx/blob/master/docs/redux-structure.md)
- [Sample State](https://github.com/rossmorey/ANSELpx/blob/master/docs/sample-state.md)

##Implementation Timeline
###Phase I: Authentication (2 days)

####Objective: Develop successful user login/logout/sign-up

- [x] Rails Auth
- [x] User Model/Migration
- [x] Session/User Controller -- backend auth
- [x] StaticPages Controller
- [x] API Util (to interact with API)
- [x] User signup/signin components
- [x] Redux cycle for frontend authentication
- [x] Seed Users
- [x] Landing Page Styling

###Phase II: SiteHeader, Photos CR(UD), Feed (2 days)

####Objective: Once user has logged in, site header is functional: redirects to home, user, and upload pages.  Photos CRUD is up and running. Feed renders.

- [x] Photos Model/Migration
- [x] JBuilder views for Photos
- [x] API Util - request/receive photos
- [x] Frontent components - FeedContainer, FeedItem, SinglePhotoContainer, (PhotoContainer, PhotoItem)
- [x] Cloudify? integration for photo upload
- [x] Redux cycle for photo-related components
- [x] Seed Photos
- [x] Feed styling

###Phase III: Feed Sidebar & Photos (CR)UD, Single Photo View (2 days)

####Objective: Feed sidebar shows current user stats and suggestions to follow other uses.  Follow/unfollow not yet functional.

- [ ] GoogleMaps integration, for SinglePhotoContainer
- [ ] Frontent components - Sidebar, UserBox, FollowBox, FollowBoxItem
- [x] Seed Photos Metadata
- [x] Sidebar styling

###Phase IV: User Page (2 days)

####Objective: User page is up and functional, including page resizing, and image reorganization using Justified-Gallery.

- [x] API Util - request/receive user
- [x] TargetUser JBuilder View
- [x] Frontend components - User Feature, (PhotoContainer, PhotoItem)
- [x] Redux cycle for photo-related components
- [x] Justified-Gallery jQuery integration for photo display (http://miromannino.github.io/Justified-Gallery/).

###Phase IV: Follows (1 days)

####Objective: Users can follow and unfollow each other.  On click, followers/following displays a pop-up list of users.

- [x] Follows model/migration
- [x] Include followers/followed in user JSON view
- [x] Seed follows
- [x] API Util methods for follows
- [x] Frontend redux cycles
- [ ] Add pop up for followers/followed
- [x] Adjust styling as necessary

###Bonus Features (TBD)
- [ ] Comments
- [ ] Likes & Sharing
- [ ] Tags & Search
