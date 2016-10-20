class Categorization < ApplicationRecord
	belongs_to :blog_post
	belongs_to :category
	accepts_nested_attributes_for :category
end
