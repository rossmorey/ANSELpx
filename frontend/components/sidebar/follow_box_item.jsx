import React from 'react';
import FollowButtonContainer from '../follow_button/follow_button_container';
import { hashHistory } from 'react-router';

class FollowBoxItem extends React.Component {
  constructor(props) {
    super(props);
    this.handleUserFollowClick = this.handleUserFollowClick.bind(this);
  }

  handleUserFollowClick(e) {
    hashHistory.push('/user/'+this.props.user.id);
  }

  render() {
    let {
      username,
      id,
      user_img_url,
      samples,
      photo_count
    } = this.props.user;

    let images = samples.map((image) => (
      <li
        key={image.id}
        className="follow-item-image"
      >
        <img src={image.mini_square_url} />
     </li>
    ));

    return(
      <div className="follow-box-item">
        <div className="follow-item-upper">
          <div className="follow-info-container"
            onClick={this.handleUserFollowClick}>
            <img className="follow-item-badge" src={user_img_url} />
            <div className="follow-item-meta">
              <span className="username">{username}</span><br />
              <span className="photo-count">{photo_count} Photos</span>
            </div>
          </div>
          <FollowButtonContainer buttonUserId={id} />
        </div>
        <div className="follow-item-lower">
          <ul className="follow-item-images">
            {images}
          </ul>
        </div>
      </div>
    );
  }
}

export default FollowBoxItem;
