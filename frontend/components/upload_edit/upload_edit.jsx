import React from 'react';
import Drop from './dropzone';

class UploadEdit extends React.Component {
  constructor(props) {
    super(props);
    this.state = {title: "", description: "", photo_img_url: "", user_id: currentUser.id};
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.setPhotoUrl = this.setPhotoUrl.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    if (this.state.photo_img_url === "") {
      alert('Please select an image to upload, or if your image is uploading, please wait for upload to complete before clicking submit.');
    } else {
      this.props.createPhoto(this.state);
    }
  }

  setPhotoUrl(url) {
    this.setState({photo_img_url: url});
  }

  update(field) {
    return e => { this.setState({[field]: e.currentTarget.value });};
  }

  render() {
    return(
      <form onSubmit={this.handleSubmit} >
        <label>
          Title:
          <input type="text" value={this.state.title}
            onChange={this.update("title")} />
        </label>
        <label>
          Description:
          <textarea value={this.state.description}
            onChange={this.update("description")}></textarea>
        </label>
        <Drop setPhotoUrl={this.setPhotoUrl}/>
        <input type="submit" value="Submit" />
      </form>
    );
  }
}
export default UploadEdit;
