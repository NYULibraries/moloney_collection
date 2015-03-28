class AddHeaderToFindingAid < ActiveRecord::Migration
  def change
    add_column :finding_aids, :header, :text
  end
end
