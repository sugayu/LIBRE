class Episode < ApplicationRecord
  belongs_to :book
  has_many :user_episodes

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、epi_bodyカラムを部分一致検索
      result_episodes = Episode.where(['epi_body LIKE ?', "%#{search}%"])
    end
  end

end
