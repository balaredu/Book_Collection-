class MainController < ApplicationController
  def index
    @all_books = Book.all 
  end
end
