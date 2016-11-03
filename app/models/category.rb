class Category < ApplicationRecord
	has_many :categorizations
	has_many :blog_posts, :through => :categorizations 

	
end
