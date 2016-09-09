import React from 'react';
import Gallery from 'react-photo-gallery';
import JustifiedLayout from 'react-justified-layout';

class PhotoCollection extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    let id = this.props.targetUserId;
    this.props.requestUserPhotos(id);
  }

  render() {
    let photos = [];

    if (this.props.photos && this.props.photos.length > 0) {
      photos = this.props.photos.map((photo) => (
        <img
          src={photo.thumbnail_url}
          aspectRatio={photo.width/photo.height}
          key={photo.id}
        />
      ));
    }

    return(
      <div className="images-container">
        <JustifiedLayout className="justified-layout" containerWidth={900}>
          {photos}
        </JustifiedLayout>
      </div>
    );
  }
}

export default PhotoCollection;
