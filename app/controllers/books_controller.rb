class BooksController < ApplicationController
  def index
    @infos = Infomation.all
    @books = Book.all
  end

  def show
    @book = Book.find[:id]
    @user = @book.user
  end
end
