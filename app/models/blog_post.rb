class BlogPost < ApplicationRecord
	mount_uploader :blog_pic, BlogPicUploader
end
