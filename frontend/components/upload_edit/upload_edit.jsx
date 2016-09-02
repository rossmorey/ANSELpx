import React from 'react';
import Drop from './dropzone';

class UploadEdit extends React.Component {
  constructor(props) {
    super(props);
    this.state = {title: "", description: ""};
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    console.log("handing submit");
    // const user = this.state;
    // this.props.processForm({user});
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
        <Drop />
        <input type="submit" value="Submit" />
      </form>
    );
  }
}
export default UploadEdit;
