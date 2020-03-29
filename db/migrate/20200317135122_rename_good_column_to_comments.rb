class RenameGoodColumnToComments < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :good, :likes_count
  end
end
