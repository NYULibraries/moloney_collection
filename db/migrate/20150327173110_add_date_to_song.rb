class AddDateToSong < ActiveRecord::Migration
  def change
    add_column :songs, :date, :string
  end
end
