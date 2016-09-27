class AddColumnsToBlogPosts < ActiveRecord::Migration[5.0]
  def change
  	add_column :blog_posts, :title, :string
  	add_column :blog_posts, :content, :text
  	add_column :blog_posts, :category, :string
  	add_column :blog_posts, :posted_by, :string
  	add_column :blog_posts, :comments, :text
  end
end
