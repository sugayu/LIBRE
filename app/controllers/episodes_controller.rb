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

    #全ページ数の計算
    @total_page = @scanedline.count / 10

    #現在のページ番号
    @current_page = @user_episode.progress / 10 + 1

    @epi_start = @user_episode.progress
    @epi_end = @epi_start + 9
  end


  private
  def user_episode_params
    params.require(:user_episode).permit(:user_id, :episode_id, :progress)
  end
end
