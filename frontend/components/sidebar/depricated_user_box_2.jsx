import React from 'react';

const UserBox = (props) => {

  return (
    <div className="user-box">
      <div className="user-box-user">
        <img className="user-box-badge" src={props.currentUser.user_img_url} />
        <div className="user-box-username">{props.currentUser.username}</div>
      </div>
      <ul>
        <li>{props.currentUser.photo_count}<br />Photos</li>
        <li>{props.currentUser.follower_count}<br />Followers</li>
        <li>{props.currentUser.views}<br />Views</li>
      </ul>
    </div>
  );
};

export default UserBox;
