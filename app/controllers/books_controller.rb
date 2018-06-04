class BooksController < ApplicationController
  def index
    @infos = Infomation.all
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
    @book = Book.find(params[:id])
    @episodes = @book.episodes
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    book.genre_id = 1
    book.status = 1
    book.book_delete_flg = 0
    book.save
    flash[:notice] = "本を追加しました！"
    redirect_to mybook_path(current_user)
  end

  def destroy
    book = Book.find(params[:id])
    book.book_delete_flg = true
    book.save
    flash[:notice] = "本を削除しました！"
    redirect_to mybook_path(current_user)
  end

  private
  def book_params
    params.require(:book).permit(:user_id, :genre_id, :book_title, :cover_img, :status, :book_delete_flg)
  end
end
