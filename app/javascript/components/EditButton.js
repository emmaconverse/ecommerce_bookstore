import React from "react"
import PropTypes from "prop-types"
class EditButton extends React.Component {
  render () {
    return (
      <a href={`/admin/books/${this.props.book.id}/edit`}>
        Edit

      </a>
    );
  }
}


export default EditButton
// refers to the class
