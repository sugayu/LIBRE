class RenameUserImgColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :user_img, :user_img_id
  end
end
