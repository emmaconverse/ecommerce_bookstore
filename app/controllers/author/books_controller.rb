class Author::BooksController < ApplicationController
  before_action :authenticate_author!

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
      @book = Book.new(books_params)
      unless current_user.admin?
        @book.author = current_user
      end

      if @book.save
        redirect_to root_path
      else
        render :new
      end

    end

    def edit
      @book = Book.find(params[:id])
    end

    def update
      @book = Book.find(params[:id])
      @book.update(books_params)
      if @book.save
        redirect_to author_books_path
      else
        render :edit
      end
    end

    def delete
    end

    def destroy
      @book = Book.find(params[:id])
      @book.destroy
      redirect_to admin_books_path
    end

private
  def books_params
    params.require(:book).permit(:title, :description, :price, :book_cover)
  end

  def authenticate_author!
    authenticate_user!
    redirect_to books_path, status: :forbidden unless current_user.author?
  end
end
