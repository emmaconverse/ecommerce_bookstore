class AuthorsController < ApplicationController
  def index
    @authors = User.where(author:true)
  end

  def show
    @author = User.where(author:true).find(params[:id])
  end
end
