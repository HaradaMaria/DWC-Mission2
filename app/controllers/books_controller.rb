class BooksController < ApplicationController
  def index
    @book = Book.all
  end
  
  
  def show
    @book = Book.find(params[:id])
    
    
  end
  
  
  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = "Create successfully!!"
      redirect_to book_path(book.id)
    else
      render books_path
    end
  end
  
  
  def edit
    @book = Book.find(params[:id])
    
  end
  
  
  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:notice] = "Update successfully!!"
      redirect_to book_path(book.id)
    else
      render :edit
    end
  end
  
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Delete successfully!!"
    redirect_to books_path
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title,:body)
  end
  
  
end
