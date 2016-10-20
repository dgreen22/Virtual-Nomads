class Comment < ApplicationRecord
	belongs_to :blog_post
	accepts_nested_attributes_for :blog_post
end
