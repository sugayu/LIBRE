class CreateInfomations < ActiveRecord::Migration[5.1]
  def change
    create_table :infomations do |t|
      t.integer :admin_id
      t.string :info_title
      t.text :info_body

      t.timestamps
    end
  end
end
