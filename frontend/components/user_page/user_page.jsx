import React from 'react';
import PhotoCollection from './photo_collection';
import UserHeader from './user_header';
import Navbar from '../navbar/navbar';

class UserPage extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <div className="userPage">
        <Navbar
          currentUser={this.props.currentUser}
          logout={this.props.logout}
          createPhoto={this.props.createPhoto}
          origin={this.props.params.id}
          requestUserPhotos={this.props.requestUserPhotos}
          requestTargetUser={this.props.requestTargetUser}
          targetUserId={this.props.routeParams.id}
        />
        <div className="max-width">
          <UserHeader
            className="user-header"
            targetUserId={this.props.routeParams.id}
            targetUser={this.props.targetUser}
            requestTargetUser={this.props.requestTargetUser}
          />
        <PhotoCollection
          requestUserPhotos={this.props.requestUserPhotos}
          targetUserId={this.props.routeParams.id}
          photos={this.props.photos}
        />
        </div>
      </div>
    );
  }
}

export default UserPage;
