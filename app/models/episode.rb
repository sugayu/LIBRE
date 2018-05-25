class Episode < ApplicationRecord
  belongs_to :book
  has_many :user_episodes
  has_many :dictionary_records

  # def self.search(search, book) #self.でクラスメソッドとしている
  #   if search # Controllerから渡されたパラメータが!= nilの場合は、epi_bodyカラムを部分一致検索
  #     episodes = book.episodes

  #     #段落ごとに配列に格納（chompによって改行を削除）
  #     episodes.each do |epi|
  #       lines = epi.epi_body.rstrip.split(/\r?\n/).map {|line| line.chomp }
  #       count = lines.count - 1

  #     @result_array = []#配列の初期化
  
  #       for num in 0..count do

  #        if lines[num].include?("%#{search}%")
  #         @result_array.push(lines[num])
  #         binding.pry
  #        else

  #        end
  #      end

  #    end
  #     #paragraph.where(['epi_body LIKE ?', "%#{search}%"])

  #   end
  # end

end
