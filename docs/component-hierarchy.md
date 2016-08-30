## Component Hierarchy

**Root**
**Router**
**App**

**SessionFormContainer**
- SessionForm

**HomeContainer**
  - FeedContainer
    + FeedItem
  - Sidebar
    + UserBox
    + FollowBox
      - FollowBoxItem

**UserContainer**
  - UserFeature
  - PhotoContainer
    - PhotoItem

**SinglePhotoContainer**

**SingleUserContainer**

**UploadContainer** /??

http://www.anselpx.com

##Routes
|Path   | Component   |
|-------|-------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/feed" | "HomeContainer" |
| "/photo/:photoId" | "SinglePhotoContainer" |
| "/photo/:photoId/edit" | "SinglePhotoContainer" |
| "/user/:userId" | "SingleUserContainer" |
| "/user/:userId/edit" | "SingleUserContainer" |
| "/upload" | "UploadContainer" |
