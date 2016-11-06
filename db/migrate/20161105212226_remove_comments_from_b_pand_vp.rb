class RemoveCommentsFromBPandVp < ActiveRecord::Migration[5.0]
  def change
  	remove_column :blog_posts, :comments
  	remove_column :video_posts, :comments
  end
end
