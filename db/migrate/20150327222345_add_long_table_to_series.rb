class AddLongTableToSeries < ActiveRecord::Migration
  def change
    remove_column :series, :table, :text
    add_column :series, :table, :longtext
  end
end
