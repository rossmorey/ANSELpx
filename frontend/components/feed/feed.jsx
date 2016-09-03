import React from 'react';
import FeedItem from '../feed_item/feed_item';

class Feed extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestPhotos();
  }

  render() {
    let feedItems = this.props.photos.map((photo) => (
      <FeedItem details={photo} key={photo.created_at} />
    ));

    return (
      <div className="feed">
        {feedItems}
      </div>
    );
  }
}

export default Feed;
