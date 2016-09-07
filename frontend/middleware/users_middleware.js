import { receiveTargetUser,
         UsersConstants
       } from '../actions/users_actions';

import { fetchTargetUser } from '../util/users_api_util';

export default ({getState, dispatch}) => next => action => {
  const successCallback = user => dispatch(receiveTargetUser(user));

  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    console.log(errors);
  };

  switch(action.type){
    case UsersConstants.REQUEST_TARGET_USER:
      fetchTargetUser(action.id, successCallback, errorCallback);
      return next(action);
    default:
      return next(action);
  }
};
