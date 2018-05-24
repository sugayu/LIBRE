class PreviewsController < ApplicationController
  layout 'preview'
  def episode
    body = params[:text]
    # @episode_preview = Episode.build()
    @book = Book.find(params[:book_id])
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
end
