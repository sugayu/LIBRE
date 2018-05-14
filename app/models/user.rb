class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attachment :user_img

  belongs_to :theme
  
  has_many :userbooks
  has_many :laterreads
  has_many :mywords
  has_many :userepisodes
  has_many :books
  has_many :likes
end
