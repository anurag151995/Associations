class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def  index
    @posts= Post.all
  end
  
  def show
  	@post = Post.find(params[:id])
  end

  def create
    @post = Post.new(name: params[:post]['name'],description: params[:post]['description'])
    @post.save!
    redirect_to @post
  end
end
