class BooksController < ApplicationController
  def index
    
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
