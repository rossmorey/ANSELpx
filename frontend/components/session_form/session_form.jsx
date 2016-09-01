import React from 'react';
import { hashHistory } from 'react-router';
import { Link } from 'react-router';

class SessionForm extends React.Component {
  constructor(props){
    super(props);
    this.state = { username: "Username", password: "Password" };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
		this.props.processForm({user});
  }

   componentWillReceiveProps(newProps) {
     if (newProps.loggedIn) {
        hashHistory.push("/");
     }
   }

  update(field) {
		return e => { this.setState({[field]: e.currentTarget.value }); };  }

    renderErrors(){
  		return(
  			<ul>
  				{this.props.errors.map( (error, i) => (
  					<li key={`error-${i}`}>
  						{error}
  					</li>
  				))}
  			</ul>
  		);
  	}

  render() {
    let formType = this.props.formType;

    let form;
    if (formType === 'login') {
      form = () => (
        <form onSubmit={this.handleSubmit} className={formType + "_form_box"}>
          <input type="text" placeholder="Username" onChange={this.update("username")}/>
            <br />
          <input type="text" placeholder="Password" onChange={this.update("password")}/>
            <br />
          <input type="submit" value="Login" />
          <Link to="/signup" >>>Sign up for an account</Link>
        </form>
      );
    } else {
      form = () => (
        <form onSubmit={this.handleSubmit} className={formType + "_form_box"}>
            {this.renderErrors()}
            <input type="text" placeholder="First Name" onChange={this.update("first_name")}/>
              <br />
            <input type="text" placeholder="Last Name" onChange={this.update("last_name")}/>
              <br />
            <input type="text" placeholder="Username" onChange={this.update("username")}/>
              <br />
            <input type="text" placeholder="Password" onChange={this.update("password")}/>
              <br />
          <input type="submit" value="Sign Up" />
          <Link to="/login" >>>Already have an account?</Link>

        </form>
      );
    }

    return (
      <div className={formType + "_form_container"}>
        <div className="login-header">
          <img src="http://themoreyfamily.net/Logo.png" />
        </div>
        {form()}
      </div>
    );
  }
}

export default SessionForm;
