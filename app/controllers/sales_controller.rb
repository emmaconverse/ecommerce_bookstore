class SalesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_book!, except: [:index]


  def index
    # @sales = Sale.where(user: current_user)
    # these are the same
    @sales = current_user.sales
  end

  def new
    @sale = Sale.new

  end

  def create
    @sale = Sale.new(book: @book, user: current_user)
    # @sale.save
  end

private
  def load_book!
    @book = Book.find(params[:book_id])
  end


end
