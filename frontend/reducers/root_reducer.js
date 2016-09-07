import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import PhotosReducer from './photos_reducer';
import NewFollowersReducer from './new_followers_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  photos: PhotosReducer,
  new_followers: NewFollowersReducer
});

export default RootReducer;
