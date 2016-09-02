import { PhotosConstants } from '../actions/photos_actions';
// import merge from 'lodash/merge';

const PhotosReducer = function(state = [], action){
  switch(action.type){
    case PhotosConstants.RECEIVE_PHOTOS:
      return action.photos;
    default:
      return state;
  }
};

export default PhotosReducer;
