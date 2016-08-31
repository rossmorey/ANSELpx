import React from 'react';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }
  handleClick(e) {
    e.preventDefault();
    debugger
    // this.store;
  }

  render() {
    return (
      <div>
        <div>In the App!</div>
        <button onClick={this.handleClick}>Logout</button>
      </div>
    )
  }

}


export default App;
