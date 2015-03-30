class AddArrangementToFindingAids < ActiveRecord::Migration
  def change
    add_column :finding_aids, :arrangement, :text
  end
end
