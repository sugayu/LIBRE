class LikesController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    like = Like.create(user_id: current_user.id, book_id: book.id)
    episode = Episode.find(params[:episode_id])
    flash[:notice] = "いいね！しました"
    redirect_to book_episode_path(book, episode)
  end

  def destroy
    like = Like.destroy(params[:id])
    book = Book.find(params[:book_id])
    episode = Episode.find(params[:episode_id])
    flash[:notice] = "いいね！を取り消しました"
    redirect_to book_episode_path(book, episode)
  end
end
