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
      # Book.create(title: params[:book][:title], description: params[:book][:description], price: params[:book][:price])
      # Author.create(name: params[:authors][:name])
      @book.save
      redirect_to admin_books_path
    end

    def edit
    end

    def update
    end

    def delete
    end

    def destroy
    end

private
  def books_params
    params.require(:book).permit(:title, :description, :price, author_attributes: [:name])
  end
end
