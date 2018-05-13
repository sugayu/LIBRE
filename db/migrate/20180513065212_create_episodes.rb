class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.integer :book_id
      t.string :epi_title
      t.text :epi_body
      t.boolean :epi_delete_flg

      t.timestamps
    end
  end
end
