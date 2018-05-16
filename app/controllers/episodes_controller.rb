class EpisodesController < ApplicationController
  def show
    @episode = Episode.find(params[:id])
    @book = @episode.book
    body = @episode.epi_body
    @scanedbody = body.scan(/.{1,#{300}}/)
  end
end
