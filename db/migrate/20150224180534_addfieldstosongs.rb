class Addfieldstosongs < ActiveRecord::Migration
  def change
    add_column :songs, :refid, :string
    add_column :songs, :aiamm, :string
    add_column :songs, :duration, :string
  end
end
