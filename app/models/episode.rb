class Episode < ApplicationRecord
  belongs_to :book
  has_many :user_episodes
  
end
