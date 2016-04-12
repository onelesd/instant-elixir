// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"
//import { Socket } from "phoenix";

import React from "react";  
import ReactDOM from "react-dom";  
import HelloWorld from "./components/main";

var App = React.createFactory(HelloWorld);  
ReactDOM.render(App(window.APP_PROPS), document.getElementById('content'));  
