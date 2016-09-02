import {
  receivePhotos,
  createPhoto,
  PhotosConstants
} from '../actions/photos_actions';
import { fetchPhotos, sendPhoto } from '../util/photos_api_util';

export default ({getState, dispatch}) => next => action => {
  const successCallback = photos => dispatch(receivePhotos(photos));
  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    console.log(errors);
  };
  switch(action.type){
    case PhotosConstants.REQUEST_PHOTOS:
      fetchPhotos(successCallback, errorCallback);
      return next(action);
    case PhotosConstants.CREATE_PHOTO:
      sendPhoto(action.photo, successCallback, errorCallback);
      return next(action);
    default:
      return next(action);
  }
};
