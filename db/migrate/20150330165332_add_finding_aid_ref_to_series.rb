class AddFindingAidRefToSeries < ActiveRecord::Migration
  def change
    add_column :series, :finding_aid, :string
    
  end
end
