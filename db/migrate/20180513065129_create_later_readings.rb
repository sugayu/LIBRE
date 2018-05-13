class CreateLaterReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :later_readings do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
