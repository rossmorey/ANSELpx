import React from 'react';

class FollowButton extends React.Component {
  constructor(props){
    super(props);
    this.state = {loading: false, followed: false };
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    if (!this.state.loading) {
      const follow = {
        follow: {
          follower_id: this.props.currentUser.id,
          followed_id: this.props.buttonUserId
        }
      };

      if (!this.state.followed) {
        this.props.createFollow(follow);
      } else {
        this.props.deleteFollow(follow);
      }

      this.setState({loading: true});
    }
  }

  componentDidMount() {
    this.setState({loading: false, followed: false});

    let followed = this.props.currentUser.followed;

    if (followed && followed.length !== 0) {
      followed.forEach((followedUser) => {
        if (followedUser.id === this.props.buttonUserId) {
          this.setState({followed: true});
        }
      });
    }
  }

  componentWillReceiveProps(nextProps) {
    this.setState({loading: false, followed: false});
    if (nextProps.currentUser) {
      nextProps.currentUser.followed.forEach((followed) => {
        if (followed.id === this.props.buttonUserId) {
          this.setState({followed: true});
        }
      });
    }
  }

  render() {
    let button;
    if (this.state.loading) {
      button = () => (<div className="button loading">Loading...</div>);
    } else if (this.state.followed) {
      button = () => (<div className="button unfollow">Unfollow</div>);
    } else {
      button = () => (<div className="button follow">Follow</div>);
    }

    return (
      <div onClick={this.handleClick} className="ButtonContainer">
        {button()}
      </div>
    );
  }
}

export default FollowButton;
