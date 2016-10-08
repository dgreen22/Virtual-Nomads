class HomePagesController < ApplicationController

	def blog_video
		@blog_posts = BlogPost.all.order(id: :desc).page(params[:page]).per(10)
		
	end

end
