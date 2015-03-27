class AddSlugAndImageToGaelicAthletes < ActiveRecord::Migration
  def change
    add_column :gaelic_athletes, :slug, :string
    add_index :gaelic_athletes, :slug, unique: true
    add_attachment :gaelic_athletes, :image
  end
end
