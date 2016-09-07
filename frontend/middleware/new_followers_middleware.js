import {
  receiveNewFollowers,
  NewFollowersConstants
} from '../actions/new_followers_actions';
import { fetchNewFollowers } from '../util/new_followers_api_util';

export default ({getState, dispatch}) => next => action => {
  let successCallback = followers => dispatch(receiveNewFollowers(followers));

  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    console.log(errors);
  };

  switch(action.type){
    case NewFollowersConstants.REQUEST_NEW_FOLLOWERS:
      fetchNewFollowers(successCallback, errorCallback);
      return next(action);
    default:
      return next(action);
  }
};
