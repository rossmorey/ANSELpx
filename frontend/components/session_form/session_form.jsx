import React from 'react';

class SessionForm extends React.Component {
  constructor(props){
    super(props);
    this.state = { username: "", password: "" };
  }

  handleSubmit(e) {
    e.preventDefault();
    console.log("You made it to handlSubmit!");
  }

  update(field) {
    return e => { this.setState({field : e.currentTarget.value}); };
  }

  render() {
    return (
      <div className="login_form_container">
        <form onSubmit={this.handleSubmit} className="login_form_box">
          <label>
            Username:
            <input type="text" value={this.state.username} onChange={this.update("username")}/>
          </label>
          <label>
            Password:
            <input type="text" value={this.state.password} onChange={this.update("password")}/>
          </label>
          <input type="submit" value="SUBMIT" />
        </form>
      </div>
    );
  }
}

export default SessionForm;
