class VideoPostsController < ApplicationController
	protect_from_forgery
	before_action :authenticate_admin!, only: [:new, :edit]

	def index
		@video_posts = VideoPost.all.order(id: :desc).page(params[:page]).per(10)
	end

	def new
		@video_post = VideoPost.new
	end

	def create
		@video_post = VideoPost.new(video_post_params)
		@video_posts = VideoPost.all.order(id: :desc).page(params[:page]).per(10)
		respond_to do |format|
		  if @video_post.save
		  	format.html { redirect_to video_posts_url, notice: 'Your video was submitted successfully' }
		    format.json { render :index, status: :created, location: @video_post }
		  else
		    format.html { render :new }
		    format.json { render json: @video_post.errors, status: :unprocessable_entity }
		  end
		end
		puts @video_post.errors.inspect
	end

	def update
		@video_post = VideoPost.find(params[:id])
		@video_posts = VideoPost.all.order(id: :desc).page(params[:page]).per(10)
	    if @video_post.update_attributes(video_post_params)
	      redirect_to video_posts_url  
	    else
	      render 'edit'
	    end
	end

	def edit
		 @video_post = VideoPost.find(params[:id])
	end

	def destroy
		VideoPost.find(params[:id]).destroy
	    flash[:success] = "Post deleted"
	    redirect_to video_posts_url
	end


private 

	def video_post_params
		params.require(:video_post).permit(:title, :video, :video_text, :posted_by, :admin_id)
	end

end
