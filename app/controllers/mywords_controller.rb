class MywordsController < ApplicationController
  def create
    word = params[:selected]
    book = Book.find(params[:book_id])
    myword = Myword.create(user_id: current_user.id, book_id: book.id, word: word)
    render nothing: true
  end
end
