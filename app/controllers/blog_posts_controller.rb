class BlogPostsController < ApplicationController
	protect_from_forgery
	before_action :authenticate_admin!, only: [:new, :edit]

	def index
		@categories = Category.all
		if params[:search]
			@blog_posts = BlogPost.search(params[:search]).order(id: :desc).page(params[:page]).per(10)
		else
			@blog_posts = BlogPost.all.order(id: :desc).page(params[:page]).per(10)
		end
	end

	def new
	  @blog_post = BlogPost.new
	  @blog_post.categorizations.build.build_category
	  @blog_post.categories.build
	end

	def edit
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



private

  def blog_post_params
  	params.require(:blog_post).permit(:title, :content, :posted_by, :comments, :blog_pic, {categorizations_attributes: [:id, {:category_id => []}, :category_name]})
  end

end
