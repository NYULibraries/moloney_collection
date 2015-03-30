class AddFindingAidIdToSeries < ActiveRecord::Migration
  def change
    add_column :series, :finding_aid_id, :integer
  end
end
