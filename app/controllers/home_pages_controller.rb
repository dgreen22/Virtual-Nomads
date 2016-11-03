class HomePagesController < ApplicationController

	def index
		@last = BlogPost.last
		@second = BlogPost.offset(1).last
		@third = BlogPost.offset(2).last
	end

	def video_posts
		@video_posts = VideoPost.all.order(id: :desc).page(params[:page]).per(10)
	end
end

