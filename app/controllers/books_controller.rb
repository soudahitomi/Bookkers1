class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    # Book was successfully created.
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    # Book was successfully updated.
  end

  def destroy
    # Book was successfully destroyed.
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
