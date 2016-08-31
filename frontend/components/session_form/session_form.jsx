import React from 'react';
import { hashHistory } from 'react-router';

class SessionForm extends React.Component {
  constructor(props){
    super(props);
    this.state = { username: "", password: "" };
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
    // const button_val;
    // if (this.props.formType === 'login') {
    //   button_val = "Login" }
    //   else {
    //
    //   }
    return (
      <div className="login_form_container">
        { this.renderErrors() }
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
