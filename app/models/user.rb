class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  after_initialize :set_default_value, if: :new_record?


  attachment :user_img

  #belongs_to :theme
  
  has_many :user_books
  has_many :later_reads
  has_many :mywords
  has_many :user_episodes
  has_many :books
  has_many :likes
  has_many :dictionary_records

  private
  def set_default_value
    self.theme_id  ||= 1
    self.quit_flg = false
    self.title_show_flg = true
    self.progress_bar_show_flg = true
  end
end
