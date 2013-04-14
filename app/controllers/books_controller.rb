class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(params[:book])
    redirect_to "/books/#{@book.id}"
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(params[:book])
    redirect_to "/books/#{@book.id}"
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to "/books"
  end

end
