class RemoveCategoryFromBlogPosts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :blog_posts, :category
  end
end
