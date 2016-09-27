class AddBlogPicToBlogPosts < ActiveRecord::Migration[5.0]
  def change
  	add_column :blog_posts, :blog_pic, :string
  end
end
