import React from 'react';

class Feed extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    e.preventDefault();
    this.props.logout();
  }

  render() {
    return (
      <div>
        <div>In the Feed</div>
        <button onClick={this.handleClick}>Logout</button>
      </div>
    );
  }
}

export default Feed;
