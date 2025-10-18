class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path

  def index
    @books = Book.all
  end

  def show
  end

  private

   def book_params
     params.require(:book).permit(:book_name, :caption)
   end
  end

end
