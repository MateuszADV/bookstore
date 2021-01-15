class BooksController < ApplicationController
	def create
		@author = Author.find(params[:author_id])
		@book = @author.books.create(book_params)
		redirect_to author_path(@author)
	end

	def edit
		@book = Book.find(params[:id])
		puts "!!!NAPIS TESTOWY!!!"
		puts params[:book]
	end

	private
	def book_params
		params.require(:book).permit(:title, :pages, :year, :body)
	end
end
