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
      # @book.build_author
    end

    def create
      @book = Book.new(books_params)


      if @book.save
        redirect_to admin_books_path
      else
        # @book.build_author
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
    params.require(:book).permit(:title, :description, :price, :book_cover, :author_id)
  end

  def authenticate_admin!
    authenticate_user!
    redirect_to root_path, status: :forbidden unless current_user.admin?
  end
end
