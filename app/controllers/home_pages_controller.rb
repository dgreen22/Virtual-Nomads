class HomePagesController < ApplicationController

	def index
		@last = BlogPost.last
		@second = BlogPost.offset(1).last
		@third = BlogPost.offset(2).last
		@last_vid = VideoPost.last
		@second_vid = VideoPost.offset(1).last
		@third_vid = VideoPost.offset(2).last

		set_meta_tags title: "Home Page",
                	  keywords: "Jessica_Opoku-Amoah About_virtual_nomads",
                	  description: "Serving You Value & Inspiration Through Travel"
	
	end

	def about
		set_meta_tags title: "About Jessica Opoku-Amoah",
                	  keywords: "Jessica_Opoku-Amoah About_virtual_nomads",
                	  description: "Bio on Jessica Opoku-Amoah"
	end
	
end

