class CommentsController < ApplicationController
	def new
  	@comments = Comment.new
  end

  def  index
    @comments = Comment.all
  end
  
  def show
  	@comment = Comment.find(params[:id])
  end

  def create
  @comment = Comment.new(description: params[:comment]['description'])
   @comment.save
    redirect_to @comment
  end
end
