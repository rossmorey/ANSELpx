export const UsersConstants = {
  REQUEST_TARGET_USER: "REQUEST_TARGET_USER",
  RECEIVE_TARGET_USER: "RECEIVE_TARGET_USER"
};

export const requestTargetUser = id => ({
  type: UsersConstants.REQUEST_TARGET_USER,
  id
});

export const receiveTargetUser = targetUser => ({
  type: UsersConstants.RECEIVE_TARGET_USER,
  targetUser
});
