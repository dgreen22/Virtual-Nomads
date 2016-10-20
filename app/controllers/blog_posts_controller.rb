class BlogPostsController < ApplicationController
	protect_from_forgery
	before_action :authenticate_admin!, only: [:new, :edit]

	def index
	  @blog_posts = BlogPost.order(id: :desc)
	end

	def new
	  @blog_post = BlogPost.new
	  @blog_post.categorizations.build.build_category
	  @blog_post.categories.build
	end

	def edit
		 @blog_post = BlogPost.find(params[:id])
	end

	def update
	@blog_post = BlogPost.find(params[:id])
    if @blog_post.update_attributes(blog_post_params)
      render 'show'  
    else
      render 'edit'
    end
	end

	def show
		@blog_post = BlogPost.find(params[:id])
		
	end

	def create
	  @blog_post = BlogPost.new(blog_post_params)
	  respond_to do |format|
		  if @blog_post.save
		    format.html { redirect_to @blog_post, notice: 'Your blog was submitted successfully' }
		    format.json { render :show, status: :created, location: @blog_post }
		  else
		    format.html { render :new }
		    format.json { render json: @blog_post.errors, status: :unprocessable_entity }
		  end
		end
		puts @blog_post.errors.inspect
	end

private

  def blog_post_params
  	params.require(:blog_post).permit(:title, :content, :posted_by, :comments, :blog_pic, {categorizations_attributes: [:category_id, :category_name]})
  end

end
