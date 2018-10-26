import React from "react"
import PropTypes from "prop-types"
import ReactTable from "react-table";
import 'react-table/react-table.css'
// EditButton below is just like a variable name
import EditButton from './EditButton'
import AuthorCell from './AuthorCell'
import BookCover from './BookCover'

class BooksIndex extends React.Component {
  render () {
    return (
      <div>
        <ReactTable
          data={this.props.books}
          columns={[
            {
              Header: "Cover",
              accessor: book_cover => <BookCover book_cover={book_cover} />,
              id: "id"
            },
            {
              Header: "Title",
              accessor: "title"
            },
            {
              Header: "Author",
              accessor: author => <AuthorCell author={name} />,
              id: "id"
            },
            {
              Header: "Description",
              accessor: "description"
            },
            {
              Header: "Price",
              accessor: "price"
            },
            {
              Header: "Number of Sales",
              accessor: "sales"
            },
            {
              Header: "Edit",
              accessor: book => <EditButton book={book} />,
              // unknown mystery
              id: "id"
            }
            ]}
        />
      </div>
    );
  }
}

BooksIndex.propTypes = {
  // greeting: PropTypes.string
};
export default BooksIndex
