class BooksController < ApplicationController

	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def show
		@book = Book.find(params[:id])
	end

	def create
		@book = Book.new(book_params)
		@book.save
		redirect_to "/cars"
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)
		redirect_to "/books"
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to "/books"
	end

	private

	def book_params
		params.require(:book).permit(:name, :description, :price, :edition)
	end

end
