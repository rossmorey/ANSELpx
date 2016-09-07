import React from 'react';
import Gallery from 'react-grid-gallery';

class PhotoCollection extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    let id = this.props.targetUserId;
    this.props.requestUserPhotos(id);
  }

  render() {

    const IMAGES = [{
        src: "https://c2.staticflickr.com/9/8817/28973449265_07e3aa5d2e_b.jpg",
        thumbnail: "https://c2.staticflickr.com/9/8817/28973449265_07e3aa5d2e_n.jpg",
        thumbnailWidth: 320,
        thumbnailHeight: 174,
        caption: "After Rain (Jeshu John - designerspics.com)"
},
{
        src: "https://c2.staticflickr.com/9/8356/28897120681_3b2c0f43e0_b.jpg",
        thumbnail: "https://c2.staticflickr.com/9/8356/28897120681_3b2c0f43e0_n.jpg",
        thumbnailWidth: 320,
        thumbnailHeight: 212,
        caption: "Boats (Jeshu John - designerspics.com)"
},{
    src: "https://c2.staticflickr.com/9/8817/28973449265_07e3aa5d2e_b.jpg",
    thumbnail: "https://c2.staticflickr.com/9/8817/28973449265_07e3aa5d2e_n.jpg",
    thumbnailWidth: 320,
    thumbnailHeight: 174,
    caption: "After Rain (Jeshu John - designerspics.com)"
},
{
    src: "https://c2.staticflickr.com/9/8356/28897120681_3b2c0f43e0_b.jpg",
    thumbnail: "https://c2.staticflickr.com/9/8356/28897120681_3b2c0f43e0_n.jpg",
    thumbnailWidth: 320,
    thumbnailHeight: 212,
    caption: "Boats (Jeshu John - designerspics.com)"
},

{
        src: "https://c4.staticflickr.com/9/8887/28897124891_98c4fdd82b_b.jpg",
        thumbnail: "https://c4.staticflickr.com/9/8887/28897124891_98c4fdd82b_n.jpg",
        thumbnailWidth: 320,
        thumbnailHeight: 212
        //look ma, no caption!
}];


    return(
      <Gallery showCloseButton={true} images={IMAGES}/>
    );
  }
}

export default PhotoCollection;

    // const IMAGES = this.props.photos.map((photo) => (
    //   {
    //     src: photo.photo_img_url,
    //     thumbnail: photo.photo_img_url
    //   }
    // ));
    //
    // debugger



// render(
//         ,
//         document.getElementById('example-0')
// );





// <div className="images-container">
//   {photos}
// </div>





// let photos = [];
//
// if (this.props.photos) {
//   photos = this.props.photos.map((photo) => (
//     <img src={photo.photo_img_url} />
//   ));
// }
