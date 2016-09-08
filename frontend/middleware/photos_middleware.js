import {
  receivePhotos,
  receivePhoto,
  createPhoto,
  PhotosConstants
} from '../actions/photos_actions';
import {
  fetchPhotos,
  fetchUserPhotos,
  sendPhoto
} from '../util/photos_api_util';

export default ({getState, dispatch}) => next => action => {
  let successCallback = photos => dispatch(receivePhotos(photos));

  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    console.log(errors);
  };
  switch(action.type){
    case PhotosConstants.REQUEST_PHOTOS:
      fetchPhotos(successCallback, errorCallback);
      return next(action);
    case PhotosConstants.REQUEST_USER_PHOTOS:
      fetchUserPhotos(action.id, successCallback, errorCallback);
      return next(action);
    case PhotosConstants.CREATE_PHOTO:
      successCallback = action.updatePhotoState ?
        photo => dispatch(receivePhoto(photo)) :
        () => {};
      sendPhoto({photo: action.photo}, successCallback, errorCallback);
      return next(action);
    default:
      return next(action);
  }
};
