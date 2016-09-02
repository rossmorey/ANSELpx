import React from 'react';
import Modal from 'react-modal';
import ModalStyle from './modal_style';
import UploadEdit from '../upload_edit/upload_edit';

class Navbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = { showDropdown: false, modalOpen: false };
    this.handleUserClick = this.handleUserClick.bind(this);
    this.handleUploadClick = this.handleUploadClick.bind(this);
    this.handleLogoutClick = this.handleLogoutClick.bind(this);
    this.handleModalClick = this.handleModalClick.bind(this);
    this.onModalClose = this.onModalClose.bind(this);
    this.onModalOpen = this.onModalOpen.bind(this);
  }

  handleModalClick(e) {
    this.setState({modalOpen: true});
  }

  onModalClose() {
    this.setState({modalOpen: false});
    ModalStyle.content.opacity = 0;
  }

  onModalOpen() {
    ModalStyle.content.opacity = 100;
  }

  handleUserClick(e) {
    console.log('clicked user dropbown');
  }

  handleLogoutClick(e) {
    e.preventDefault();
    this.props.logout();
  }

  handleUploadClick(e) {
    e.preventDefault();
    let success = (fail, data) => console.log(data);
    window.cloudinary.openUploadWidget(
      window.cloudinary_options,
      success
    );
  }

  render() {
    let username;
    let user_img_url;
    if (this.props.currentUser) {
      username = this.props.currentUser.username;
      user_img_url = this.props.currentUser.user_img_url;
    } else {
      username = "";
      user_img_url = "";
    }
    return(
      <div className="navbar">
        <div className="max-width">
          <img className="logo" src="http://res.cloudinary.com/dhorsi7vf/image/upload/v1472749492/Logo_itosiy.png" />
          <div className="left-nav-container">
            <div className="user-display" onClick={this.handleUserClick}>
              <img className="user-badge" src={user_img_url} />
              <div className="user-name">
                <span>{username}</span>
              </div>
            </div>
            <button className="upload" onClick={this.handleModalClick}>Upload</button>
            <button className="logout" onClick={this.handleLogoutClick}>Logout</button>

            <Modal
              isOpen={this.state.modalOpen}
              onRequestClose={this.onModalClose}
              style={ModalStyle}
              onAfterOpen={this.onModalOpen}>

                <button className="closeButton" onClick={this.onModalClose}>CLOSE</button>
                <UploadEdit />
            </Modal>
          </div>
        </div>
      </div>
    );
  }
}

export default Navbar;




// <button className="add-photo" onClick={this.handleUploadClick}>Add Photo</button>



// <div className="user-dropdown">
//   <ul>
//     <li>Visit Your Profile</li>
//     <li>Edit Your Profile</li>
//     <li onClick={this.handleLogoutClick}>Logout</li>
//   </ul>
// </div>
