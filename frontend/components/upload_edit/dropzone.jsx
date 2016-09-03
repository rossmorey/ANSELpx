import React from 'react';
import Dropzone from 'react-dropzone';
import request from 'superagent';

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
      <div className="FileUpload">
        <Dropzone
          onDrop={this.onImageDrop}
          multiple={false}
          accept="image/*">
          {this.state.uploadedFile === null ?
            <div className="pre-uploading">Drop an image or click to select a file to upload.</div>
              :
            <div className="loader">Loading...</div>
          }
        </Dropzone>
      </div>
    );

    const uploadedImage = () => (
      <div>
        <div>
          <p>{this.state.uploadedFile.name}</p>
          <img src={this.state.uploadedFileCloudinaryUrl} />
        </div>
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
