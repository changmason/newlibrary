class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(params[:book])
    redirect_to "/books/#{@book.id}"
  end

end
