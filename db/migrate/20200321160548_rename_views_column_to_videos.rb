class RenameViewsColumnToVideos < ActiveRecord::Migration[6.0]
  def change
    rename_column :videos, :Views, :views
  end
end
