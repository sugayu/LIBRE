class DictionaryRecordsController < ApplicationController
  def create
    word = params[:selected]
    book = Book.find(params[:book_id])
    episode = Episode.find(params[:episode_id])
    dictionary_record = DictionaryRecord.create(user_id: current_user.id, episode_id: episode.id, book_id: book.id, word: word)
    render nothing: true
  end
end
