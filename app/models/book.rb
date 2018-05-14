class Book < ApplicationRecord
  attachment :cover_img

  belongs_to :genre
  belongs_to :user

  has_many :userbooks
  has_many :laterreads
  has_many :mywords
  has_many :likes
  has_many :episodes
end