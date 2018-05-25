class UsersController < ApplicationController
  def top

  end

  def change_theme
    if current_user.theme_id == 1
      current_user.theme_id = 2
    else
      current_user.theme_id = 1
    end
    current_user.update(user_theme_params)
    book = Book.find(params[:book_id])
    episode = Episode.find(params[:id])
    redirect_to book_episode_path(book, episode)
  end

  def show
    #連載中の本の数
    @continue_books = current_user.books.where(status: 1)

    #完結済の本の数
    @finish_books = current_user.books.where(status: 0)

    @mywords = current_user.mywords.page(params[:page]).per(5)
    @likes = current_user.likes
    @dictionary_records = current_user.dictionary_records.page(params[:page]).per(5)

  end

  def mybook
    @user_books = current_user.books
  end

  private
  def user_theme_params
    params.fetch(:user, {}).permit(:theme_id)
  end
end
