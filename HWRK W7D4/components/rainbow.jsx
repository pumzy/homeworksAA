import React from 'react';
import {
  Route,
  Link,
  NavLink
} from 'react-router-dom';

import Red from './red';
import Green from './green';
import Blue from './blue';
import Violet from './violet';

class Rainbow extends React.Component {
  render() {
    return (
      <div>
        <h1>Rainbow Router!</h1>
        {/* Your links should go here */}

        <NavLink to='/blue'>Blue</NavLink>
        <NavLink to='/red'>Red</NavLink>
        <NavLink to='/Violet'>Violet</NavLink>
        <NavLink to='/Green'>Green</NavLink>
        <div id="rainbow">
          {/* Your routes should go here */}
          <Route path="/red" component={Red}> Red </Route>
          <Route path="/green" component={Green}> Green </Route>
          <Route path="/blue" component={Blue}> Blue </Route>
          <Route path="/violet" component={Violet}> Violet </Route>
        </div>
      </div>
    );
  }
};

export default Rainbow;
