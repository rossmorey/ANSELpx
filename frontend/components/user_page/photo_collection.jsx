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
      // debugger
      photos = this.props.photos.map((photo) => (
          <img
            src={photo.thumbnail_url}
            // style={{height: 180, weight: 360}}
            aspectRatio={photo.width/photo.height}
          />
      ));
    }

    return(
      <div className="images-container">
        <JustifiedLayout className="justified-layout" containerPadding={50}>
          {photos}
        </JustifiedLayout>
      </div>
    );
  }
}


//   render() {
//     let photos = [];
//
//     if (this.props.photos) {
//       photos = this.props.photos.map((photo) => ({
//         src: photo.photo_img_url,
//         width: photo.width/2,
//         height: photo.height/2,
//         aspectRatio: photo.width / photo.height
//       }));
//     }
//
//     return(
//       <div className="images-container">
//         <Gallery photos={photos} disableLightbox={true} />
//       </div>
//     );
//   }
// }



export default PhotoCollection;


// <Gallery showCloseButton={true} images={IMAGES}/>


// render(
//         ,
//         document.getElementById('example-0')
// );

// const photos = this.props.photos.map((photo) => (
//   {
//     src: photo.photo_img_url,
//     thumbnail: photo.photo_img_url
//   }
// ));
