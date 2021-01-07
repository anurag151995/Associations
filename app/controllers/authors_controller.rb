class AuthorsController < ApplicationController
	def index
    @authors = Author.all
  end

  def new
    @author = Author.new
     3.times{@author.books.build}
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def author_params
    params.require(:author).permit(:name, books_attributes: [:id, :name, :title])
  end
end
