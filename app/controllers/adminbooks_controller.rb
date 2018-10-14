class AdminbooksController < ApplicationController
  before_action :authenticate_user!
  # if current_user.admin?
    def index
      @books = Book.all
    end

    def show
      @book = Book.find(params[:id])
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def delete
    end

    def destrouy
    end
  # end
end
