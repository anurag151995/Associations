class LikesController < ApplicationController
 def create
 	if (params[:post_id].present?)
    @post1 = Post1.find(params[:post_id])
    @post1.likes.create
 	redirect_to @post1
 elsif 
 	@comment1 = Comment1.find(params[:comment_id])
    @comment1.likes.create
 	redirect_to @comment1
 	end	
 end
 def show
 	if (params[:post_id].present?)
    @post1 = Post1.find(params[:post_id])
 elsif 
 	@comment1 = Comment1.find(params[:comment_id])
 	end	
 end
end
