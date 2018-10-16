class Admin::BooksController < ApplicationController

before_action :authenticate_admin!

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

      if @book.save
        redirect_to admin_books_path
      else
        render :create
      end

    end

    def edit
      @book = Book.find(params[:id])
    end

    def update
      @book = Book.find(params[:id])
      @book.update(books_params)
      if @book.save
        redirect_to admin_books_path
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
    params.require(:book).permit(:title, :description, :price, :avatar, author_attributes: [:name])
  end

  def authenticate_admin!
    authenticate_user!
    redirect_to books_path, status: :forbidden unless current_user.admin?
  end
end
