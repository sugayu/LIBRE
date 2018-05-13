class CreateMywords < ActiveRecord::Migration[5.1]
  def change
    create_table :mywords do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :word

      t.timestamps
    end
  end
end
