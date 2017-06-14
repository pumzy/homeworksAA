import { combineReducers } from 'redux';

import GiphysReducer from './giphys_reducer';

var RootReducer = combineReducers({
  giphys: GiphysReducer
})

export default RootReducer;
