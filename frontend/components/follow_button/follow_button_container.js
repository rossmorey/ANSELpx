import { connect } from 'react-redux';
import FollowButton from './follow_button';
import { createFollow, deleteFollow } from '../../actions/follows_actions';

const mapStateToProps = (state, ownProps) => ({
  currentUser: state.session.currentUser,
  buttonUserId: ownProps.buttonUserId
});

const mapDispatchToProps = dispatch => ({
  createFollow: (follow) => (dispatch(createFollow(follow))),
  deleteFollow: (follow) => (dispatch(deleteFollow(follow)))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FollowButton);
