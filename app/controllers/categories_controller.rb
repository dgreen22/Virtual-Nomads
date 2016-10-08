class CategoriesController < ApplicationController

	def new
		@category = Category.new
	end

	def create
	  @category = Category.new(cat_params)
	  if @category.save
	    redirect_to '/blog-video'
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
