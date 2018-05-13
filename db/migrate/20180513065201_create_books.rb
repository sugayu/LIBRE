class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :book_title
      t.text :cover_img
      t.integer :status
      t.boolean :book_delete_flg

      t.timestamps
    end
  end
end
