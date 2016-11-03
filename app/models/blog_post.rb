class BlogPost < ApplicationRecord
	belongs_to :admin
	has_many :categorizations
	has_many :categories, :through => :categorizations
	accepts_nested_attributes_for :categorizations
	accepts_nested_attributes_for :categories
	has_many :comments, dependent: :destroy
	accepts_nested_attributes_for :comments
	mount_uploader :blog_pic, BlogPicUploader

	if Rails.env.development?
		def self.search(search)
			joins(:categories).where(["category_name LIKE ?", "%#{search}%"])
		end
	end

	if Rails.env.production?
		def self.search(search)
			joins(:categories).where(["category_name ILIKE ?", "%#{search}%"])
		end
	end
end