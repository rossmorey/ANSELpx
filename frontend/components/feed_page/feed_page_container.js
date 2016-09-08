import { connect } from 'react-redux';
import FeedPage from './feed_page';
import { logout } from '../../actions/session_actions';
import { requestPhotos, createPhoto } from '../../actions/photos_actions';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  photos: state.photos
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  requestPhotos: () => dispatch(requestPhotos()),
  createPhoto: (photo, origin) => dispatch(createPhoto(photo, origin))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FeedPage);
