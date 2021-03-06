class BooksController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @new_book = Book.new
  end

  def edit
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book), notice:'You have created book successfully.'
    else
      render :index
    end
  end

  def update
  end

  def destroy
  end

private
  def book_params
    params.require(:book).permit(:title, :body)

  end

end
