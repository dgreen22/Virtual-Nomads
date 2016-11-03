class VideoPost < ApplicationRecord
	belongs_to :admin
	has_many :comments
end
