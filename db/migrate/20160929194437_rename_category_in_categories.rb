class RenameCategoryInCategories < ActiveRecord::Migration[5.0]
  def change
  	rename_column :categories, :category, :category_name
  end
end
