import { createStore } from 'redux';
import RootReducer from '../reducers/root_reducer';
import RootMiddleware from '..middlware/root_middleware';

const configureStore = (preloadedState = {}) => (
  createStore(
    RootReducer,
    preloadedState,
    RootMiddleware
  )
);

export default configureStore;
