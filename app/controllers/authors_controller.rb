class AuthorsController < ApplicationController
 attr_accessible :name
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end
end
