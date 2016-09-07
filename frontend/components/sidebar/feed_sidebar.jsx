import React from 'react';
import UserBox from '../user_box';
import FollowBoxContainer from './follow_box_container';

class FeedSidebar extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="feed-sidebar">
        <UserBox targetUser={this.props.currentUser} />
        <FollowBoxContainer />
      </div>
    );
  }
}

export default FeedSidebar;
