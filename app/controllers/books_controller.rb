class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index] 
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :text)
  end
end