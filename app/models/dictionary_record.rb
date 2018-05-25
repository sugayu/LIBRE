class DictionaryRecord < ApplicationRecord
  belongs_to :user
  belongs_to :episode
  belongs_to :book

end
