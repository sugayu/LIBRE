class LikesController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    like = Like.create(user_id: current_user.id, book_id: book.id)
    episode = Episode.find(params[:episode_id])
    redirect_to book_episode_path(book, episode)
  end
end
