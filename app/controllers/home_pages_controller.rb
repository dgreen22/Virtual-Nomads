class HomePagesController < ApplicationController

	def index
		@last = BlogPost.last
		@second = BlogPost.offset(1).last
		@third = BlogPost.offset(2).last
	end

	def blog_video
		@blog_posts = BlogPost.all.order(id: :desc).page(params[:page]).per(10)
		
		if params[:search]
			@categories = Category.search(params[:search])
		else
			@categories = Category.all
		end
	end
end

