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
      @book.build_author
    end

    def create
      @book = Book.create(books_params)
      @book.save
      redirect_to admin_books_path
    end

    def edit
      @book = Book.find(params[:id])
    end

    def update
    @book = Book.find(params[:id])
    @book.update(books_params)
    redirect_to admin_books_path
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
    params.require(:book).permit(:title, :description, :price, author_attributes: [:name])
  end
end
