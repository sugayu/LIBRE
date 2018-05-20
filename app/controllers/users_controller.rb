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

  private
  def user_theme_params
    params.fetch(:user, {}).permit(:theme_id)
  end
end
