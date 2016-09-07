import { connect } from 'react-redux';
import FollowBox from './follow_box';
import { requestNewFollowers } from '../../actions/new_followers_actions';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  newFollowers: state.new_followers
});

const mapDispatchToProps = dispatch => ({
  requestNewFollowers: () => dispatch(requestNewFollowers())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FollowBox);
