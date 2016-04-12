import React from 'react'

const { string } = React.PropTypes

const HelloWorld = React.createClass({

  propTypes: {
    message: string.isRequired
  },

  getDefaultProps() {
    return {
      message: "The default message"
    }
  },

  render() {
    const { message } = this.props

    return (
      React.createElement("p", null, message)
    )
  }
})

export default HelloWorld  
