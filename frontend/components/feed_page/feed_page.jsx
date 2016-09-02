import React from 'react';
import Navbar from '../navbar/navbar';
import Feed from '../feed/feed';

class FeedPage extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <div className="feedPage">
        <Navbar currentUser={this.props.currentUser} logout={this.props.logout} />
        <div className="max-width">
          <Feed photos={this.props.photos} requestPhotos={this.props.requestPhotos} />
        </div>
      </div>
    );
  }
}

export default FeedPage;
