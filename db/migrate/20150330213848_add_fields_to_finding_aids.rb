class AddFieldsToFindingAids < ActiveRecord::Migration
  def change
    add_column :finding_aids, :historical_note, :text
    add_column :finding_aids, :scope_note, :text
    add_column :finding_aids, :access_points, :text
    add_column :finding_aids, :administrative_information, :text
  end
end
