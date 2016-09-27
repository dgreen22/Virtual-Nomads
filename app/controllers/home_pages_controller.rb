class HomePagesController < ApplicationController

	def blog_video
		@blog_posts = BlogPost.all
	end

end
