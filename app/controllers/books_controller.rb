class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def update
    if @book.update(book_params)
      redirect_to books_path, notice: "book was successfully updated."
    else
      render :edit
    end
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def book_params
      params.require(:book).permit(:title, :summary, :author, :type, :quote, :cover, :owner, :reader, :created)
    end
end
