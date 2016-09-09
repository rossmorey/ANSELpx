import React from 'react';
import Lightbox from 'react-images';

class FollowBoxItemImage extends React.Component {
  constructor(props) {
    super(props);
    this.state = { lightboxIsOpen: false };
    this.handleLightboxClick = this.handleLightboxClick.bind(this);
    this.closeLightbox = this.closeLightbox.bind(this);
  }

  handleLightboxClick() {
    this.setState({lightboxIsOpen: true});
  }

  closeLightbox() {
    this.setState({lightboxIsOpen: false});
  }

  render() {
    let {description, photo_img_url, title, mini_square_url} =
      this.props.details;
    return (
      <div className="feed-photo-container">
        <img
          onClick={this.handleLightboxClick}
          src={mini_square_url}
        />
        <Lightbox
          images={[{
            src: photo_img_url,
            caption: title + ": " + description
          }]}
          isOpen={this.state.lightboxIsOpen}
          onClickPrev={this.gotoPrevious}
          onClickNext={this.gotoNext}
          onClose={this.closeLightbox}
          backdropClosesModal={true}
          showCloseButton={true}
          showImageCount={false}
        />
      </div>
    );
  }
}

export default FollowBoxItemImage;
