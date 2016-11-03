class Comment < ApplicationRecord
	belongs_to :blog_post
	belongs_to :video_post
	accepts_nested_attributes_for :blog_post
end
