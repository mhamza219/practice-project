class BlogsController < ApplicationController

	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def create
		@blog = Blog.new(blog_params)
		@blog.save
		redirect_to "/blogs"
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def update
		@blog = Blog.find(params[:id])
		@blog.update(blog_params)
		redirect_to "/blogs"
	end

	def destroy
		@blog = Blog.find(params[:id])
		@blog.destroy
		redirect_to "/blogs"
	end

	private

	def blog_params
		params.require(:blog).permit(:name, :description)
	end


end
