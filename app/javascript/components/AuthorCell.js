import React from "react"
import PropTypes from "prop-types"
class AuthorCell extends React.Component {
  render () {
    return (
      <p> ${this.props.book.author.name} </p>
    );
  }
}


export default AuthorCell
