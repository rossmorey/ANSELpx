import React from 'react';
import Dropzone from 'react-dropzone';
import request from 'superagent';
import DropStyle from './drop_style';
import DropActiveStyle from './drop_active_style';

class Zone extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      uploadedFile: null,
      uploadedFileCloudinaryUrl: ''
    };
    this.onImageDrop = this.onImageDrop.bind(this);
    this.handleImageUpload = this.handleImageUpload.bind(this);
  }

  onImageDrop(files) {
    this.setState({uploadedFile: files[0]});
    this.handleImageUpload(files[0]);
  }

  handleImageUpload(file) {

    let upload = request.post('https://api.cloudinary.com/v1_1/dhorsi7vf/upload')
                     .field('upload_preset', window.cloudinaryOptions.upload_preset)
                     .field('file', file);

    upload.end((err, response) => {
      if (err) {console.error(err);}

      if (response.body.secure_url !== '') {
        this.setState({
          uploadedFileCloudinaryUrl: response.body.secure_url
        });
        this.props.setPhotoUrl(response.body.secure_url);
      }
    });
  }

  render() {
    const upload = () => (
        <Dropzone
          onDrop={this.onImageDrop}
          multiple={false}
          accept="image/*"
          style={DropStyle}
          activeStyle={DropActiveStyle}>
          {this.state.uploadedFile === null ?
            <div className="pre-uploading">
              <div className="upload-text">Drop an image or click to select a file.</div>
              <img className="camera" src="http://res.cloudinary.com/dhorsi7vf/image/upload/v1473089805/camera_r5zsgv.png" />
            </div>
              :
            <div className="loader">Loading...</div>
          }
        </Dropzone>
    );

    const uploadedImage = () => (
        <div className="uploaded-image-container">
          <img className="uploaded-image" src={this.state.uploadedFileCloudinaryUrl} />
        </div>
    );

    return (
      <div className="left-image-container">
        {this.state.uploadedFileCloudinaryUrl === '' ?
            upload() : uploadedImage()
        }
      </div>
    );
  }
}

export default Zone;
