class AddTitleShowFlgToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :title_show_flg, :boolean
    add_column :users, :progress_bar_show_flg, :boolean
  end
end
