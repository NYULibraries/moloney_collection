class CreateFindingAids < ActiveRecord::Migration
  def change
    create_table :finding_aids do |t|
      t.string :creator
      t.string :title
      t.string :dates_inclusive
      t.string :dates_bulk
      t.text :abstract
      t.text :quantity
      t.text :location_note
      t.string :language
      t.string :call_phrase

      t.timestamps null: false
    end
  end
end
