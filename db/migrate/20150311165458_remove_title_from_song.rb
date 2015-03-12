class RemoveTitleFromSong < ActiveRecord::Migration
  def change
    remove_column :songs, :title, :string
  end
end
