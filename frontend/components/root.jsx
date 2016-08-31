import React from 'react';
import { Provider } from 'react-redux';
import SessionFormContainer from './session_form/session_form_container';
import AppRouter from './router';

const Root = (store) => (
  <Provider store={store}>
    <AppRouter />
  </Provider>
);

export default Root;
