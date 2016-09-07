import { applyMiddleware } from 'redux';
import createLogger from 'redux-logger';
import SessionMiddleware from '../middleware/session_middleware';
import PhotosMiddleware from '../middleware/photos_middleware';
import NewFollowersMiddleware from '../middleware/new_followers_middleware';
import FollowsMiddleware from '../middleware/follows_middleware';
import UsersMiddleware from '../middleware/users_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  PhotosMiddleware,
  NewFollowersMiddleware,
  FollowsMiddleware,
  UsersMiddleware,
  createLogger()
);

export default RootMiddleware;
