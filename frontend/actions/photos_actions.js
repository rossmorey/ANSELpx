export const PhotosConstants = {
  REQUEST_PHOTOS: "REQUEST_PHOTOS",
  RECEIVE_PHOTOS: "RECEIVE_PHOTOS",
};

export const requestPhotos = () => ({
  type: PhotosConstants.REQUEST_PHOTOS
});

export const receivePhotos = (photos) => ({
  type: PhotosConstants.RECEIVE_PHOTOS,
  photos
});
