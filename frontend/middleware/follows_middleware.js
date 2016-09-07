import { FollowsConstants } from '../actions/follows_actions';
import { receiveCurrentUser } from '../actions/session_actions';
import {
  sendNewFollow,
  sendDeleteFollow
} from '../util/follows_api_util';

export default ({getState, dispatch}) => next => action => {
  let successCallback =
    currentUser => {
      dispatch(receiveCurrentUser(currentUser));
    };

  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    console.log(errors);
  };

  switch(action.type){
    case FollowsConstants.CREATE_FOLLOW:
      sendNewFollow(action.follow, successCallback, errorCallback);
      return next(action);
    case FollowsConstants.DELETE_FOLLOW:
      sendDeleteFollow(action.follow, successCallback, errorCallback);
      return next(action);
    default:
      return next(action);
  }
};
