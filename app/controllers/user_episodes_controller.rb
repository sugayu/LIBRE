class UserEpisodesController < ApplicationController
  def next
    user_episode = UserEpisode.find(params[:id])
    user_episode.progress += 10
    user_episode.update(user_episode_params)
    episode = user_episode.episode
    book = Book.find(params[:book_id])
    redirect_to book_episode_path(book, episode)
  end

  def previous
    user_episode = UserEpisode.find(params[:id])
    user_episode.progress -= 10
    user_episode.update(user_episode_params)
    episode = user_episode.episode
    book = Book.find(params[:book_id])
    redirect_to book_episode_path(book, episode)
  end

  private
  def user_episode_params
    params.fetch(:user_episode,{}).permit(:progress)
  end
end
