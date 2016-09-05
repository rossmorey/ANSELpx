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
            <div className="user-info clear">
              <img className="user-badge-small" src={user_img_url} />
              <div className="user-name">{username}</div>
            </div>
            <div className="title-description">
              <span className="feed-item-title">{title}</span>
              <span className="feed-item-description">{description}</span>
            </div>
          </div>
        </div>
    );
  }
}

export default FeedItem;
