class CreateThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :themes do |t|
      t.string :theme_name
      t.string :text_color
      t.string :background_color

      t.timestamps
    end
  end
end
