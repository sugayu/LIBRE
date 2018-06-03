class ResultsController < ApplicationController
  #application.html.erbを選んでしまうとヘッダーもプレビューに
  #表示されてしまうためpreview.html.erbを用意して適用resultもプレビューと同じようにヘッダーを表示したくないため流用
  layout 'preview'

  def search_book
    word = params[:search_word]
    @books = Book.where("book_title like '%" + word + "%'")
  end

  def search_user
    word = params[:search_word]
    @users = User.where("user_name like '%" + word + "%'")
  end
end
