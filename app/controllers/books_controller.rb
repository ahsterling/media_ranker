class BooksController < ApplicationController
  def index
    @books = Book.order(votes: :desc)
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :author, :description, :imageurl, :votes))
    @book.votes = 0
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by(id: params[:id])
  end

  def update
    @book = Book.find_by(id: params[:id])
    if @book.update(params.require(:book).permit(:title, :author, :description, :imageurl, :votes))
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    if @book.destroy
      redirect_to books_path
    end
  end


end
