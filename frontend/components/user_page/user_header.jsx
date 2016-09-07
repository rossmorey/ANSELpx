import React from 'react';

class UserHeader extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestTargetUser(this.props.targetUserId);
  }

  render() {
    let user = this.props.targetUser;

    if (this.props.targetUser === undefined) {
      user = []
    }

    return (
      <div className="user-header">
        <div className="user-header-user">
          <img
            className="user-header-badge"
            src={user.user_img_url}
          />
          <div
            className="user-header-username"
          >{user.username}</div>
        </div>
        <ul>
          <li>{user.photo_count}<br />Photos</li>
          <li>{user.follower_count}<br />Followers</li>
          <li>{user.views}<br />Views</li>
        </ul>
      </div>
    );
  }
}

export default UserHeader;
