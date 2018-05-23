class EpisodesController < ApplicationController
  def show
    @episode = Episode.find(params[:id])
    #話のprogressを最初の一回のみ初期化する必要があるためUserEpisodeが存在するかどうかで初期化の処理を行うか行わないか分けている
    if UserEpisode.exists?(user_id: current_user.id, episode_id: @episode.id)
      #UserEpisodeのレコードが存在するのでなんの処理も行わずif文を抜ける
    else
      #UserEpisodeのレコードが存在しないのでprogressを0として初期化する
      user_episode = @episode.user_episodes.build(user_id: current_user.id, progress: 0)
      user_episode.save
    end

    @book = @episode.book

    body = @episode.epi_body
    @scanedline = body.scan(/.{1,#{20}}/)#200文字として1回とすると改行がある時点で次の配列に行ってしまう

    @user_episode = UserEpisode.find_by(user_id: current_user.id, episode_id: @episode.id)

    if @user_episode.progress == 0 && @episode.id != 1 
      #@episode.idが１だと- 1をしたときにエラーが出るため回避させている
      #前のエピソードのidに関連づいている本のidをとってきて今見ているエピソードが一番最初のものかどうかを判別している
      previous_episode_id = @episode.id - 1
      previous_episode = Episode.find(previous_episode_id)
      @compared_book = previous_episode.book
    else
      @compared_book = @episode
    end

    #全ページ数の計算
    @total_page = (@scanedline.count / 10.0).ceil
    total_page = (@scanedline.count / 10.0).ceil#@percentageを出すために必要

    #現在のページ番号
    @current_page = @user_episode.progress / 10 + 1

    #読んだページのパーセント(切り上げ)
    @percentage = (( @current_page / total_page.to_f ) * 100).ceil

    @epi_start = @user_episode.progress
    @epi_end = @epi_start + 9

    #いいねの数
    @likes = Like.where(book_id: @book.id)

    if Like.exists?(user_id: current_user.id, book_id: @book.id)
      #ユーザーがすでにいいねしていたらいいねを取り消すために該当するLikeのidをとって置く必要がある
      @user_like = Like.find_by(user_id: current_user.id, book_id: @book.id)
    else
      #ユーザーがいいねしていので該当するLikeのidをとって置く必要がない
    end

    ##javascript内で使うための変数(gonというgemを使っている)
    #右矢印、左矢印でページを遷移できるようにするために用意する
    gon.user_episode_id = @user_episode.id
    #マイワード機能を追加するにあたりコントローラで必要なため用意する
    gon.book_id = @book.id
    #エピソードの詳細画面で次のページに行く時に必要
    gon.total_page = @total_page
    gon.current_page = @current_page
    gon.user_episode_progress = @user_episode.progress
    gon.compared_book_id = @compared_book.id
    gon.episode_id = @episode.id
  end

  def next_episode
    episode = Episode.find(params[:id])
    next_id = episode.id + 1
    book = Book.find(params[:book_id])
    redirect_to book_episode_path(book, next_id)
  end

  def previous_episode
    episode = Episode.find(params[:id])
    previous_id = episode.id - 1
    book = Book.find(params[:book_id])
    redirect_to book_episode_path(book, previous_id)
  end

  def new
    @episode = Episode.new
    @book = Book.find(params[:book_id])
    @episodes = @book.episodes
    gon.book_id = @book.id

    body = params[:text]
    # @episode_preview = Episode.build()

    book = @book.episodes.build(book_id: @book.id, epi_title: "test", epi_body: body, epi_delete_flg: 0)
    if book.epi_body == nil
      @epi_start = 0
      @epi_end = 9
      @scanedline = []
    else
    @scanedline = book.epi_body.scan(/.{1,#{20}}/)

    @epi_start = 0
    @epi_end = @epi_start + 9
  end

end

def create
  episode = Episode.new(episode_params)
  episode.epi_delete_flg = 0
  episode.book_id = Book.find(params[:book_id]).id
  episode.save
  book = Book.find(params[:book_id])
  redirect_to edit_book_path(book)
end

private
def user_episode_params
  params.require(:user_episode).permit(:user_id, :episode_id, :progress)
end

def episode_params
  params.require(:episode).permit(:book_id, :epi_title, :epi_body, :epi_delete_flg)
end
end
