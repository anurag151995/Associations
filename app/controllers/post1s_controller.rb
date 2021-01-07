class Post1sController < ApplicationController
  def index
    @post1s = Post1.all
  end

  def new
  	@post1 = Post1.new
  end

  def show
  	@post1 = Post1.find(params[:id])
  end

  def create
    @post1 = Post1.new(name: params[:post1]['name'])
    @post1.save!
    redirect_to @post1
  end
end
