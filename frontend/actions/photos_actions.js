export const PhotosConstants = {
  REQUEST_PHOTOS: "REQUEST_PHOTOS",
  REQUEST_USER_PHOTOS: "REQUEST_USER_PHOTOS",
  RECEIVE_PHOTOS: "RECEIVE_PHOTOS",
  RECEIVE_PHOTO: "RECEIVE_PHOTO",
  CREATE_PHOTO: "CREATE_PHOTO"
};

export const requestPhotos = () => ({
  type: PhotosConstants.REQUEST_PHOTOS
});

export const requestUserPhotos = (id) => ({
  type: PhotosConstants.REQUEST_USER_PHOTOS,
  id
});

export const receivePhotos = (photos) => ({
  type: PhotosConstants.RECEIVE_PHOTOS,
  photos
});

export const receivePhoto = (photo) => ({
  type: PhotosConstants.RECEIVE_PHOTO,
  photo
});

export const createPhoto = (photo, updatePhotoState) => ({
  type: PhotosConstants.CREATE_PHOTO,
  photo,
  updatePhotoState
});
