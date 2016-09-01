# API Endpoints

## HTML API

### Root

- `GET /` - loads React web app

## JSON API

### Session
- `POST /api/session`
- `DELETE /api/session`

### Users
- `POST /api/users`
- `GET /api/users/:userId`
- `PATCH /api/users`

### Photos
- `GET /api/photos`
- `POST /api/photos`
- `GET /api/photos/:id`
- `PATCH /api/photos/:id`
- `DELETE /api/photos/:id`

### Likes
- `GET /api/photos/:id/likes`
- `POST /api/photos/:photoId/likes`
- `DELETE /api/likes/:likeId`

### Follows
- `GET /api/photos/:id/follows`
- `POST /api/photos/:photoId/follows`
- `DELETE /api/follows/:followId`
