class DropFindingAidFromSeries < ActiveRecord::Migration
  def change
    remove_column :series, :finding_aid, :string
  end
end
