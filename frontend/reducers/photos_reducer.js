import { PhotosConstants } from '../actions/photos_actions';

const PhotosReducer = function(state = [], action){
  switch(action.type){
    case PhotosConstants.RECEIVE_PHOTOS:
      return action.photos;
    case PhotosConstants.RECEIVE_PHOTO:
      return action.photo.concat(state);
    default:
      return state;
  }
};

export default PhotosReducer;
