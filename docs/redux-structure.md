## Auth Cycles

### Session API Request Actions

* `signUp`
  0. invoked from `SignupForm` `onSubmit`
  0. `POST /api/users` is called.
  0. `receiveCurrentUser` is set as the success callback.
* `logIn`
  0. invoked from `LoginForm` `onSubmit`
  0. `POST /api/session` is called.
  0. `receiveCurrentUser` is set as the callback.
* `logOut`
  0. invoked from `Navbar` `onClick`
  0. `DELETE /api/session` is called.
  0. `removeCurrentUser` is set as the success callback.

### Session API Response Actions

* `receiveCurrentUser`
  0. invoked from an API callback
  0. the `SessionReducer` stores `currentUser` in the application's state.

## Error Cycles

### Error API Response Actions
* `setErrors`
  0. invoked from API callbacks on error for actions that generate POST requests
  0. the `ErrorReducer` stores the `form` in the application's state; `errors` are mapped to their respective forms
* `removeErrors`
  0. invoked from API callbacks on success for actions that generate POST requests
  0. the `ErrorReducer` removes `errors` for a given `form` in the application's state.

## Photo Cycles

### Photo API Request Actions

* `fetchAllPhotos`
  0. invoked from `FeedContainer` `didMount`/`willReceiveProps`
  0. `GET /api/photos` is called.
  0. `receiveAllPhotos` is set as the success callback.

* `createPhoto`
  0. invoked from `UploadContainer`, once per file uploaded
  0. `POST /api/photos` is called.
  0. `receiveSinglePhoto` is set as the success callback.

* `fetchSinglePhoto`
  0. invoked from `FeedItem` `onClick`
  0. `GET /api/photos/:id` is called.
  0. `receiveSinglePhoto` is set as the success callback.

* `updatePhoto`
  0. invoked from `SinglePhotoContainer` `onSubmit`
  0. `POST /api/photos` is called.
  0. `receiveSinglePhoto` is set as the success callback.

* `destroyPhoto`
  0. invoked from delete photo button `onClick`
  0. `DELETE /api/photos/:id` is called.
  0. `removePhoto` is set as the success callback.

### Notes API Response Actions

* `receiveAllPhotos`
  0. invoked from an API callback
  0. the `PhotoReducer` updates `photos` in the application's state.

* `receiveSinglePhoto`
  0. invoked from an API callback
  0. the `PhotoReducer` updates `photos[id]` in the application's state.

* `removePhoto`
  0. invoked from an API callback
  0. the `PhotoReducer` removes `photos[id]` from the application's state.

## User Cycles

### Users API Request Actions

* `createUser`
  0. invoked from `SignUp` button `onClick`
  0. `POST /api/user` is called.

* `fetchSingleUser`
  0. invoked from `UserContainer` `didMount`/`willReceiveProps`
  0. `GET /api/user/:id` is called.
  0. `receiveTargetUser` is set as the success callback.

* `updateUser`
  0. invoked from `SingleUserContainer` `onSubmit`
  0. `PATCH /api/user/:id` is called.
  0. `receiveTargetUser` is set as the success callback.

* `destroyUser`
  0. invoked from delete user button `onClick`
  0. `DELETE /api/user/:id` is called.
  0. `removeUser` is set as the success callback.

### Users API Response Actions

* `receiveTargetUser`
  0. invoked from an API callback.
  0. The `User` reducer updates `targetUser` in the application's state.

// I'm unclear how the following resources should be nexted within the API/current-state.

## Likes Cycles

### Likes API Request Actions
### Likes API Response Actions


## Follows Cycles

### Follows API Request Actions
### Follows API Response Actions


## Follows Cycles

### Follows API Request Actions
### Follows API Response Actions


## Comments Cycles

### Comments API Request Actions
### Comments API Response Actions
