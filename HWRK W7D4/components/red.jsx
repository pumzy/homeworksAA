import React from 'react';
import { Route, Link, NavLink } from 'react-router-dom';
import Orange from './orange';
import Yellow from './yellow';

class Red extends React.Component {
  render() {
    return(
      <div>
        <h2 className="red"></h2>
        {/* Links here */}
        <NavLink  exact to='/red' >Red only</NavLink>
        <NavLink to='/red/orange' >Add Orange</NavLink>
        <NavLink to='/red/yellow' >Add Yellow</NavLink>

        {/* Routes here */}
        <Route path="/red/orange" component={Orange}>Orange</Route>
        <Route path="/red/yellow" component={Yellow}>Yellow</Route>
      </div>
    );
  }
};

export default Red;
