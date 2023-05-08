class BooksController < ApplicationController
  def index
    @book = Book.all
  end
  
  
  def show
    @book = Book.find(params[:id])
    
    end
  end
  
  
  def create
    
  end
  
  
  def edit
    
  end
  
  
  def update
    
  end
  
  
  def destroy
    
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title,:body)
  end
  
  
end
