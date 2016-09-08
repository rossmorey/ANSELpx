import React from 'react';
import FollowBoxItem from './follow_box_item';

class FollowBox extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestNewFollowers();
  }

  render() {
    let potentials = [];

    if (this.props.newFollowers.length !== 0) {
      potentials = this.props.newFollowers.map((user) => (
        <FollowBoxItem key={user.id} user={user} />
      ));
    }

    return(
      <div className="follow-box">
        <div className="follow-box-title">
          Who To Follow
        </div>
        {potentials}
      </div>
    );
  }
}

export default FollowBox;
