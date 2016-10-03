import React from 'react';
import { hashHistory } from 'react-router';
import { Link } from 'react-router';

class SessionForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      username: "",
      password: "",
      first_name: "",
      last_name: "",
      first_name_empty: false,
      last_name_empty: false,
      username_empty: false,
      password_name_empty: false
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleGuest = this.handleGuest.bind(this);
    this.renderError = this.renderError.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    var user;

    if (this.props.formType == "login") {
      user = {
        username: this.state.username,
        password: this.state.password
      };
    } else {
      user = {
        username: this.state.username,
        password: this.state.password,
        first_name: this.state.first_name,
        last_name: this.state.last_name,
      };
    }

		this.props.processForm({user});
  }

  handleGuest(e) {
    e.persist();

    let usernameFill = "guest";
    let passwordFill = "password";

    this.setState({username: "guest", password: "password"});

    setTimeout(function(){this.handleSubmit(e);}.bind(this), 500);
  }

  componentWillReceiveProps(newProps) {
    if (newProps.loggedIn) {
      hashHistory.push("/");
    }
  }

  update(field) {
		return e => { this.setState({[field]: e.currentTarget.value });};
  }

  renderError(labelString, error){
    if (error) {
      return labelString + " " + error;
    }
    return null;
	}

  render() {

    let formType = this.props.formType;

    let form;
    if (formType === 'login') {
      form = () => (
        <form onSubmit={this.handleSubmit} className={formType + "_form_box"}>
          <div className="error">{this.props.errors.main}</div>
          <input type="text"
            placeholder="Username"
            className="username"
            value={this.state.username}
            onChange={this.update("username")}
          />
          <input
            type="password"
            placeholder="Password"
            value={this.state.password}
            onChange={this.update("password")}
          />
          <div className="button-container">
            <input type="submit" value="Login" />
            <button className="guest" onClick={this.handleGuest}>Guest</button>
          </div>
          <Link to="/signup" >>>Sign up for an account</Link>
        </form>
      );
    } else {
      form = () => (
        <form onSubmit={this.handleSubmit} className={formType + "_form_box"}>
          <input
            type="text"
            placeholder="First Name"
            value={this.state.first_name}
            onChange={this.update("first_name")}
          />
          <div className="error">
            {this.renderError("First name", this.props.errors.first_name)}
          </div>
          <input
            type="text"
            placeholder="Last Name"
            value={this.state.last_name}
            onChange={this.update("last_name")}
          />
          <div className="error">
            {this.renderError("Last name", this.props.errors.last_name)}
          </div>
          <input
            type="text"
            placeholder="Username"
            value={this.state.username}
            onChange={this.update("username")}
          />
          <div className="error">
            {this.renderError("Username", this.props.errors.username)}
          </div>
          <input
            type="password"
            placeholder="Password"
            value={this.state.password}
            onChange={this.update("password")}
          />
          <div className="error">
            {this.renderError("Password", this.props.errors.password)}
          </div>
          <input type="submit" value="Sign Up" />
          <Link to="/login" >>>Already have an account?</Link>
        </form>
      );
    }

    return (
      <div className={formType + "_form_container"}>
        <div className="login-header">
          <img src="http://res.cloudinary.com/dhorsi7vf/image/upload/v1475171092/logo_vj6jsp.png" />
        </div>
        <div className="tagline">
          Explore the best photos of Ansel Adams
        </div>
        {form()}
      </div>
    );
  }
}

export default SessionForm;
