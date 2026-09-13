class BooksController < ApplicationController
  def index
    
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to({ controller: "main", action: "index" }, notice: "#{@book.title} was successfully created.")

    else
      render :new
    end
  end



  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to({ controller: "main", action: "index" }, notice: "#{@book.title} was successfully updated.")
    else
      render :edit
    end
  end

  def delete 
     @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to({ controller: "main", action: "index" }, notice: "#{@book.title} was successfully deleted.")
    else
      redirect_to({ controller: "main", action: "index" }, notice: "ERROR: #{@book.title} was not deleted.")
    end
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end
end
