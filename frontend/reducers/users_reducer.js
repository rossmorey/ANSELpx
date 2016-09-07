import { UsersConstants } from '../actions/users_actions';
import merge from 'lodash/merge';

const UsersReducer = function(state = {}, action){
  switch(action.type){
    case UsersConstants.RECEIVE_TARGET_USER:
      return action.targetUser;
    default:
      return state;
  }
};

export default UsersReducer;
