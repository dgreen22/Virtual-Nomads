class HomePagesController < ApplicationController

	def index
		@last = BlogPost.last
		@second = BlogPost.offset(1).last
		@third = BlogPost.offset(2).last
		@last_vid = VideoPost.last
		@second_vid = VideoPost.offset(1).last
		@third_vid = VideoPost.offset(2).last
	end
	
end

