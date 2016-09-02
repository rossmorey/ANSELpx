import React from 'react';

class FeedItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    let {description, id, lat, lng, photo_img_url, photo, title, user_id, views} =
      this.props.details;
    return (
      <div className="feed-item">
        <img src={photo_img_url} />
        <div className="feed-item-meta">
          <h1>{title}</h1>
          <p>{description}</p>
        </div>
      </div>
    );
  }
}

export default FeedItem;
