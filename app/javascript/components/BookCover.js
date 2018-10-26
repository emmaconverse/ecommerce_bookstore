import React from "react"
import PropTypes from "prop-types"
class BookCover extends React.Component {
  render () {
    return (
      <img src={`${this.props.book.book_cover}`}/>
    );
  }
}


export default BookCover
// refers to the class
