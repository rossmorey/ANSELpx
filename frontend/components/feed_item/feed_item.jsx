import React from 'react';
import { hashHistory } from 'react-router';
import Lightbox from 'react-images';

class FeedItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = { lightboxIsOpen: false };
    this.handleUserMetaClick = this.handleUserMetaClick.bind(this);
    this.handleLightboxClick = this.handleLightboxClick.bind(this);
    this.closeLightbox = this.closeLightbox.bind(this);
  }

  handleUserMetaClick(e) {
    hashHistory.push("user/"+this.props.details.user.id);
  }

  handleLightboxClick() {
    this.setState({lightboxIsOpen: true});
  }

  closeLightbox() {
    this.setState({lightboxIsOpen: false});
  }

  render() {
    let {description, id, lat, lng, photo_img_url, photo, title, views} =
      this.props.details;
    let {username, user_img_url} = this.props.details.user;
    return (
        <div className="feed-item">
          <div className="feed-photo-container">
            <img onClick={this.handleLightboxClick} src={photo_img_url} />
            <Lightbox
              images={[{src: photo_img_url}]}
              isOpen={this.state.lightboxIsOpen}
              onClickPrev={this.gotoPrevious}
              onClickNext={this.gotoNext}
              onClose={this.closeLightbox}
              backdropClosesModal={true}
              showCloseButton={true}
              showImageCount={false}
            />
          </div>
          <div className="feed-item-meta">
            <div onClick={this.handleUserMetaClick} className="user-info clear">
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
