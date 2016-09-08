import React from 'react';
import Drop from './dropzone';
import DropStyle from './drop_style';
import { hashHistory } from 'react-router';

class UploadEdit extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      description: "",
      photo_img_url: "",
      width: "",
      height: "",
      user_id: this.props.currentUser.id
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.setParentProps = this.setParentProps.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    if (this.state.photo_img_url === "") {
      alert('Please select an image to upload, or if your image is uploading, please wait for upload to complete before clicking submit.');
    } else {
      let updatePhotoState = true;

      if (this.props.origin && parseInt(this.props.origin) !== this.props.currentUser.id) {
        updatePhotoState = false;
      }

      this.props.createPhoto(this.state, updatePhotoState);
      this.props.onModalClose();
    }
  }

  setParentProps(url, photoWidth, photoHeight) {
    this.setState({
      photo_img_url: url,
      width: photoWidth,
      height: photoHeight
    });
  }

  update(field) {
    return e => { this.setState({[field]: e.currentTarget.value });};
  }

  render() {
    return(
      <form className="upload-form" onSubmit={this.handleSubmit} >
        <div className="drop-container">
          <Drop
            className="drop-zone"
            setParentProps={this.setParentProps}
            setWidth={this.setWidth}
            setHeight={this.setHeight}
            style={DropStyle}
          />
        </div>
        <div className="vertical-line" />
        <div className="form-contents">
          <div className="title">Upload A Photo</div>
          <input
            type="text" value={this.state.title}
            onChange={this.update("title")}
            placeholder="Title"
          />
          <textarea
            value={this.state.description}
            onChange={this.update("description")}
            placeholder="Description"
          ></textarea>
        <input type="submit" value="Upload" />
        </div>
      </form>
    );
  }
}
export default UploadEdit;
