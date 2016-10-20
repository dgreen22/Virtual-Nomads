class Category < ApplicationRecord
	has_many :categorizations
	has_many :blog_posts, :through => :categorizations 

	if Rails.env.development?
		def self.search(search)
		  if search
			find(:all, :conditions => ["category_name LIKE ?", "%#{search}%"])
		  else
		  	find(:all)
		  end 
		end
	end

	if Rails.env.production?
		def self.search(search)
		  if search
			find(:all, :conditions => ["category_name ILIKE ?", "%#{search}%"])
		  else
		  	find(:all)
		  end
		end
	end
end
