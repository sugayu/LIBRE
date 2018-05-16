class EpisodesController < ApplicationController
  def show
    @episode = Episode.find(params[:id])
    @book = @episode.book
    body = @episode.epi_body
    @scanedbody = body.scan(/.{1,#{20}}/)#220文字として1回とすると改行がある時点で次の配列に行ってしまう
  end
end
