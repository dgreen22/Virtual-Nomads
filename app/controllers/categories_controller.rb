class CategoriesController < ApplicationController
	before_action :authenticate_admin!

	def new
		@category = Category.new
		set_meta_tags noindex: 'googlebot'
	end

	def create
	  @category = Category.new(cat_params)
	  if @category.save
	    redirect_to new_blog_post_path
	  else
	  	puts @category.errors.inspect
	    format.html { render :new }
	    format.json { render json: @blog_post.errors, status: :unprocessable_entity }
	  end
	end


	def cat_params
  	params.require(:category).permit(:category_name)
  end
end
