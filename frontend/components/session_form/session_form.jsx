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
    let formType = this.props.formType;

    let userNameAndPass = () => (
      <section>
      <label>
        Username:
        <input type="text" value={this.state.username} onChange={this.update("username")}/>
      </label>
      <label>
        Password:
        <input type="text" value={this.state.password} onChange={this.update("password")}/>
      </label>
      </section>
    );

    let form;
    if (formType === 'login') {
      form = () => (
        <form onSubmit={this.handleSubmit} className="{formType}_form_box">
          {userNameAndPass()}
          <input type="submit" value="Login" />
        </form>
      );
    } else {
      form = () => (
        <form onSubmit={this.handleSubmit} className="{formType}_form_box">
          <label>
            First Name:
            <input type="text" value={this.state.first_name} onChange={this.update("first_name")}/>
          </label>
          <label>
            Last Name:
            <input type="text" value={this.state.last_name} onChange={this.update("last_name")}/>
          </label>
          {userNameAndPass()}
          <input type="submit" value="Sign Up" />
        </form>
      );
    }


    return (
      <div className="{formType}_form_container">
        {this.renderErrors()}
        {form()}
      </div>
    );
  }
}

export default SessionForm;
