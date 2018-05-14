class RenameCoverImgColumnToBooks < ActiveRecord::Migration[5.1]
  def change
    rename_column :books, :cover_img, :cover_img_id
  end
end
