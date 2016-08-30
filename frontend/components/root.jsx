import React from 'react';
import { Provider } from 'react-redux';
import SessionFormContainer from './session_form/session_form_container';

const Root = (store) => (
  <Provider store={store}>
    <SessionFormContainer />
  </Provider>
);

export default Root;
