import React from "react"
import PropTypes from "prop-types"
import ReactTable from "react-table";
import 'react-table/react-table.css'

class BooksIndex extends React.Component {
  render () {
    return (
      <div>
        <ReactTable
          data={this.props.books}
          columns={[
            {
              Header: "Cover",
              accessor: "book_cover"
                // <div style="backgroundColor: red">
                // </div>
            },
            {
              Header: "Title",
              accessor: "title"
            },
            {
              Header: "Author",
              accessor: "author.name"
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
            }
            ]}
        />
      </div>
    );
  }
}

BooksIndex.propTypes = {
  greeting: PropTypes.string
};
export default BooksIndex
