class Comment1sController < ApplicationController
  def index
    @comment1s = Comment1.all
  end
  def new
  	@comment1s = Comment1.new
  end
  
  def show
  	@comment1 = Comment1.find(params[:id])
  end

  def create
  @comment1 = Comment1.new(name: params[:comment1]['name'])
   @comment1.save
    redirect_to @comment1
  end
end
