import React from 'react';

class FeedItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    let {description, id, lat, lng, photo_img_url, photo, title, views} =
      this.props.details;
    let {username, user_img_url} = this.props.details.user;

    return (
      <div className="feed-item">
        <img src={photo_img_url} />
        <div className="feed-item-meta">
          <h1>{title}</h1>
          <p>{description}</p>
          <img className="user-badge" src={user_img_url} />
          <p>{username}</p>
        </div>
      </div>
    );
  }
}

export default FeedItem;
