import React from 'react';
import FollowButtonContainer from '../follow_button/follow_button_container';

class FollowBoxItem extends React.Component {
  constructor(props) {
    super(props);
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
      <li key={image.id} className="follow-item-image"><img src={image.photo_img_url} /></li>
    ));

    return(
      <div>
        <div className="follow-item-upper">
          <img className="follow-item-badge" src={user_img_url} />
          <div className="follow-item-username">{username}</div>
          <div className="follow-item-photo-count">{photo_count}</div>
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
