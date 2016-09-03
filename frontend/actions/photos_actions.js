export const PhotosConstants = {
  REQUEST_PHOTOS: "REQUEST_PHOTOS",
  RECEIVE_PHOTOS: "RECEIVE_PHOTOS",
  RECEIVE_PHOTO: "RECEIVE_PHOTO",
  CREATE_PHOTO: "CREATE_PHOTO"
};

export const createPhoto = (photo) => ({
  type: PhotosConstants.CREATE_PHOTO,
  photo
});

export const requestPhotos = () => ({
  type: PhotosConstants.REQUEST_PHOTOS
});

export const receivePhotos = (photos) => ({
  type: PhotosConstants.RECEIVE_PHOTOS,
  photos
});

export const receivePhoto = (photo) => ({
  type: PhotosConstants.RECEIVE_PHOTO,
  photo
});
