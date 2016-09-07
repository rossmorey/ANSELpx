import { NewFollowersConstants } from '../actions/new_followers_actions';

const NewFollowersReducer = function(state = [], action){
  switch(action.type){
    case NewFollowersConstants.RECEIVE_NEW_FOLLOWERS:
      return action.newFollowers;
    default:
      return state;
  }
};

export default NewFollowersReducer;
