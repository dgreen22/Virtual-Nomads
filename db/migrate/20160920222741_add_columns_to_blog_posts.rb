class AddColumnsToBlogPosts < ActiveRecord::Migration[5.0]
  def change
  	add_column :blog_posts, :title, :string
  	add_column :blog_posts, :description, :text
  	add_column :blog_posts, :category, :string
  end
end
