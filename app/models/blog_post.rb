class BlogPost < ApplicationRecord
	belongs_to :admin
	has_many :categorizations
	has_many :categories, :through => :categorizations
	accepts_nested_attributes_for :categorizations
	accepts_nested_attributes_for :categories
	has_many :comments, dependent: :destroy
	accepts_nested_attributes_for :comments
	mount_uploader :blog_pic, BlogPicUploader

end