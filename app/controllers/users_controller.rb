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

  def change_title_show_flg
    if current_user.title_show_flg == false
      current_user.title_show_flg = true
      flash[:notice] = "タイトルを表示しました！"
    else
      current_user.title_show_flg = false
      flash[:notice] = "タイトルを非表示にしました！"
    end
    current_user.update(title_params)
    book = Book.find(params[:book_id])
    episode = Episode.find(params[:id])
    redirect_to book_episode_path(book, episode)
  end

  def change_progress_bar_show_flg
    if current_user.progress_bar_show_flg == false
      current_user.progress_bar_show_flg = 1
      flash[:notice] = "プログレスバーを表示しました！"
    else
      current_user.progress_bar_show_flg = 0
      flash[:notice] = "プログレスバーを非表示にしました！"
    end
    current_user.update(progress_bar_params)
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

  def update
    current_user.update(user_params)
    redirect_to mypage_path(current_user)
  end

  private
  def user_theme_params
    params.fetch(:user, {}).permit(:theme_id)
  end

  def title_params
    params.fetch(:user, {}).permit(:title_show_flg)
  end

  def progress_bar_params
    params.fetch(:user, {}).permit(:progress_bar_show_flg)
  end

  def user_params
    params.require(:user).permit(:theme_id, :user_name, :email, :user_img, :quit_flg)
  end
end
