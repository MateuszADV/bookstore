class BooksController < ApplicationController
	def create
		@author = Author.find(params[:author_id])
		@book = @author.books.create(book_params)
		redirect_to author_path(@author)
	end

	def edit
		# @book = Book.find(2)
		@book = Book.find(params[:author_id])
		puts "!!!NAPIS TESTOWY!!!"
		# puts params[:author_id]
		puts @book.title
		puts @book.author_id
		puts "!!!NAPIS TESTOWY!!!"
		
	end

	def new
		@book = Book.new
	end

	def show
		@book = Book.find(params[:author_id])
		puts "SHOW TEST"
		puts params[:author_id]
		puts "SHOW TEST"
		

	end

	def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
       @author = Author.find(@book.author_id)
       redirect_to author_path(@author)
    else
      render :edit
    end
  	end

	private
	def book_params
		params.require(:book).permit(:title, :pages, :year, :body)
	end
end
