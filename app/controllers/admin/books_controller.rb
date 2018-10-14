class Admin::BooksController < ApplicationController
before_action :authenticate_user!
  # if current_user.admin?
    def index
      @books = Book.all
    end

    def show
      @book = Book.find(params[:id])
    end

    def new
      @book = Book.new
    end

    def create
      Book.create(book_params)

      # if @book.save
      redirect_to admin_books_path
      # else render 'new'
      # end
    end

    def edit
    end

    def update
    end

    def delete
    end

    def destrouy
    end

private
  def book_params
    params.require(:book).permit(:title, :description, :price)
    # params.require(:authors).permit(:name)
  end
  # end
end
