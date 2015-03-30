class AddSlugToFindingAid < ActiveRecord::Migration
  def change
    add_column :finding_aids, :slug, :string
    add_index :finding_aids, :slug, unique: true
  end
end
