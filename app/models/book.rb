class Book < ApplicationRecord
  attachment :cover_img

  belongs_to :genre
  belongs_to :user

  has_many :user_books
  has_many :later_reads
  has_many :mywords
  has_many :likes
  has_many :episodes
  has_many :dictionary_records
end