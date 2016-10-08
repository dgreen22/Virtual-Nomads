class BlogPost < ApplicationRecord
	has_many :categorizations
	has_many :categories, :through => :categorizations
	accepts_nested_attributes_for :categorizations
	has_many :comments
	mount_uploader :blog_pic, BlogPicUploader
end
