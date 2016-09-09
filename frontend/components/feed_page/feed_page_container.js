import { connect } from 'react-redux';
import FeedPage from './feed_page';
import { logout } from '../../actions/session_actions';
import { requestPhotos, requestUserPhotos, createPhoto } from '../../actions/photos_actions';
import { requestTargetUser } from '../../actions/users_actions';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  photos: state.photos
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  requestPhotos: () => dispatch(requestPhotos()),
  createPhoto: (photo, origin) => dispatch(createPhoto(photo, origin)),
  requestUserPhotos: (id) => dispatch(requestUserPhotos(id)),
  requestTargetUser: (id) => dispatch(requestTargetUser(id)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FeedPage);
