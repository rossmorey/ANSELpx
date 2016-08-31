import React from 'react';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import SessionFormContainer from './session_form/session_form_container';
import App from './app'; //this should be Feel later on...

class AppRouter extends React.Component{
  constructor(props){
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._ensureSignedUp = this._ensureSignedUp.bind(this);
    this._redirectIfLoggedIn = this._redirectIfLoggedIn.bind(this);
  }

  _ensureLoggedIn(nextState, replace){
    const currentState = this.context.store.getState();
    const currentUser = currentState.session.currentUser;
    if (!currentUser) {
      replace('/login');
    }
  }

  _ensureSignedUp(nextState, replace){
    const currentState = this.context.store.getState();
    const currentUser = currentState.session.currentUser;
    if (!currentUser) {
      replace('/signup');
    }
  }

  _redirectIfLoggedIn(nextState, replace){
    const currentState = this.context.store.getState();
    const currentUser = currentState.session.currentUser;
    if (currentUser) {
      replace('/');
    }
  }

  // <IndexRoute component={  } />

  render(){
    return(
      <Router history={ hashHistory }>
        <Route path="/" component={ App } onEnter={this._ensureSignedUp}/>
        <Route path="/login" component={ SessionFormContainer } onEnter={this._redirectIfLoggedIn}/>
        <Route path="/signup" component={ SessionFormContainer } onEnter={this._redirectIfLoggedIn}/>
      </Router>
    );
  }
}

AppRouter.contextTypes = {
  store: React.PropTypes.object.isRequired
};

export default AppRouter;
