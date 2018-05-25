class CreateDictionaryRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :dictionary_records do |t|
      t.integer :user_id
      t.integer :episode_id
      t.integer :book_id
      t.string :word

      t.timestamps
    end
  end
end
