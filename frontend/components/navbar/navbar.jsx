import React from 'react';
import Modal from 'react-modal';
import ModalStyle from './modal_style';
import UploadEdit from '../upload_edit/upload_edit';
import { hashHistory } from 'react-router';

class Navbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = { showDropdown: false, modalOpen: false };
    this.handleCurrentUserClick = this.handleCurrentUserClick.bind(this);
    this.handleUploadClick = this.handleUploadClick.bind(this);
    this.handleLogoutClick = this.handleLogoutClick.bind(this);
    this.handleModalClick = this.handleModalClick.bind(this);
    this.onModalClose = this.onModalClose.bind(this);
    this.onModalOpen = this.onModalOpen.bind(this);
    this.handleLogoClick = this.handleLogoClick.bind(this);
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

  handleLogoutClick() {
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

  handleLogoClick(e) {
    hashHistory.push("/");
  }

  handleCurrentUserClick(e) {
    hashHistory.push("/user/"+this.props.currentUser.id);
  }

  render() {
    let username;
    let userImgUrl;
    if (this.props.currentUser) {
      username = this.props.currentUser.username;
      userImgUrl = this.props.currentUser.user_img_url;
    } else {
      username = "";
      userImgUrl = "";
    }
    return(
      <div className="navbar">
        <div className="max-width">
          <img className="logo"
            onClick={this.handleLogoClick}
            src="http://res.cloudinary.com/dhorsi7vf/image/upload/v1473028116/logo-dark_wbwo2u.png" />
          <div className="left-nav-container">
            <div className="user-display" onClick={this.handleCurrentUserClick}>
              <img className="user-badge" src={userImgUrl} />
              <div className="user-name">
                <span>{username}</span>
              </div>
            </div>
            <button className="upload"
              onClick={this.handleModalClick}><span>Upload</span></button>
            <button className="logout"
               onClick={this.handleLogoutClick}><span>Logout</span></button>

            <Modal
              isOpen={this.state.modalOpen}
              onRequestClose={this.onModalClose}
              style={ModalStyle}
              onAfterOpen={this.onModalOpen}>

                <button className="closeButton"
                  onClick={this.onModalClose}><span>X</span></button>

                <UploadEdit
                  createPhoto={this.props.createPhoto}
                  onModalClose={this.onModalClose}
                  currentUser={this.props.currentUser}
                  origin={this.props.origin}
                />
            </Modal>
          </div>
        </div>
      </div>
    );
  }
}

export default Navbar;
