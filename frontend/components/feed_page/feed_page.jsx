import React from 'react';
import Navbar from '../navbar/navbar';
import Feed from '../feed/feed';
import FeedSidebar from '../sidebar/feed_sidebar';

class FeedPage extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <div className="feedPage">
        <Navbar
          currentUser={this.props.currentUser}
          logout={this.props.logout}
          createPhoto={this.props.createPhoto}
        />
        <div className="max-width">
          <Feed photos={this.props.photos}
            requestPhotos={this.props.requestPhotos} />
          <FeedSidebar currentUser={this.props.currentUser} />
        </div>
      </div>
    );
  }
}

export default FeedPage;
