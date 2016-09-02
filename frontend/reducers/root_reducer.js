import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import PhotosReducer from './photos_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  photos: PhotosReducer
});

export default RootReducer;
