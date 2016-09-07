export const FollowsConstants = {
  CREATE_FOLLOW: 'CREATE_FOLLOW',
  DELETE_FOLLOW: 'DELETE_FOLLOW'
};

export const createFollow = follow => ({
  type: FollowsConstants.CREATE_FOLLOW,
  follow
});

export const deleteFollow = follow => ({
  type: FollowsConstants.DELETE_FOLLOW,
  follow
});
