class AddTableToSeries < ActiveRecord::Migration
  def change
    add_column :series, :table, :text
  end
end
