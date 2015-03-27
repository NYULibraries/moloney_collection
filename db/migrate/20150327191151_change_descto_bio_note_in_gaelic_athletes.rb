class ChangeDesctoBioNoteInGaelicAthletes < ActiveRecord::Migration
  def change
    remove_column :gaelic_athletes, :description, :text
    add_column :gaelic_athletes, :biographical_note, :text
  end
end
