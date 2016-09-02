import { applyMiddleware } from 'redux';
import createLogger from 'redux-logger';
import SessionMiddleware from '../middleware/session_middleware';
import PhotosMiddleware from '../middleware/photos_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  PhotosMiddleware,
  createLogger()
);

export default RootMiddleware;
