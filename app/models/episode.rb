class Episode < ApplicationRecord
  belongs_to :book
  has_many :userepisodes
  
end
