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
    
    #マイワード機能を追加するにあたりコントローラで必要なため用意する
    gon.book_id = @book.id

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
    @total_page = @scanedline.count / 10
    total_page = @scanedline.count / 10
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

  private
  def user_episode_params
    params.require(:user_episode).permit(:user_id, :episode_id, :progress)
  end
end
