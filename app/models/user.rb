class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  attachment :user_img

  belongs_to :theme
  
  has_many :user_books
  has_many :later_reads
  has_many :mywords
  has_many :user_episodes
  has_many :books
  has_many :likes
end
