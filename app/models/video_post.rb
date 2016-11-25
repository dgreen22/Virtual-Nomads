class VideoPost < ApplicationRecord
	belongs_to :admin
	has_many :comments;
	validates :title, :video, presence: true
end
