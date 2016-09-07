export const NewFollowersConstants = {
  REQUEST_NEW_FOLLOWERS: "REQUEST_NEW_FOLLOWERS",
  RECEIVE_NEW_FOLLOWERS: "RECEIVE_NEW_FOLLOWERS",
};

export const requestNewFollowers = () => ({
  type: NewFollowersConstants.REQUEST_NEW_FOLLOWERS
});

export const receiveNewFollowers = (newFollowers) => ({
  type: NewFollowersConstants.RECEIVE_NEW_FOLLOWERS,
  newFollowers
});
