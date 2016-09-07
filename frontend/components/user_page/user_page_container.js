import { connect } from 'react-redux';
import UserPage from './user_page';
import { requestUserPhotos } from '../../actions/photos_actions';
import { requestTargetUser } from '../../actions/users_actions';
import { logout } from '../../actions/session_actions';

const mapStateToProps = state => ({
  photos: state.photos,
  currentUser: state.session.currentUser,
  targetUser: state.targetUser
});

const mapDispatchToProps = dispatch => ({
  logout : () => dispatch(logout()),
  requestUserPhotos : (id) => dispatch(requestUserPhotos(id)),
  requestTargetUser : (id) => dispatch(requestTargetUser(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserPage);
