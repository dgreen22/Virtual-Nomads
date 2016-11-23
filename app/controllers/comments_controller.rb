class CommentsController < ApplicationController

	def new
		@blog_post = BlogPost.find(params[:blog_post_id])
		
		set_meta_tags noindex: 'googlebot'
	end

	def create
		@blog_post = BlogPost.find(params[:blog_post_id])
		@comment = @blog_post.comments.new(comment_params)
		if @comment.save
			flash[:success] = "Comment Added"
			redirect_to blog_post_path(@blog_post)
		else
			render :new
			puts @comment.errors.inspect
		end
	end

private
	
	def comment_params
		params.require(:comment).permit(:comment_content, :comment_content_creator, :blog_post_id)
	end
end
