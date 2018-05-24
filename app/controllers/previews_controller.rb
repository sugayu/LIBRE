class PreviewsController < ApplicationController
  #application.html.erbを選んでしまうとヘッダーもプレビューに
  #表示されてしまうためpreview.html.erbを用意して適用
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

  def next_preview
    body = params[:text]
    count = params[:epi_start]
    # @episode_preview = Episode.build()
    @book = Book.find(params[:book_id])
    book = @book.episodes.build(book_id: @book.id, epi_title: "test", epi_body: body, epi_delete_flg: 0)
    if book.epi_body == nil
      @epi_start = 0
      @epi_end = 9
      @scanedline = []
    else
      @scanedline = book.epi_body.scan(/.{1,#{20}}/)
      @epi_start = count
      #countはstring型なのでinteger型への型変換が必要である。
      @epi_end = @epi_start.to_i + 9
    end
  end

end
