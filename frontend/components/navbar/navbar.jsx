import React from 'react';

class Navbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = { showDropdown: false };
    this.handleUserClick = this.handleUserClick.bind(this);
    this.handleUploadClick = this.handleUploadClick.bind(this);
    this.handleLogoutClick = this.handleLogoutClick.bind(this);
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
    let success = data => console.log(data);
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
            <button className="upload" onClick={this.handleUploadClick}>Upload</button>
            <button className="logout" onClick={this.handleLogoutClick}>Logout</button>
          </div>
        </div>
      </div>
    );
  }
}

export default Navbar;


// <div className="user-dropdown">
//   <ul>
//     <li>Visit Your Profile</li>
//     <li>Edit Your Profile</li>
//     <li onClick={this.handleLogoutClick}>Logout</li>
//   </ul>
// </div>
