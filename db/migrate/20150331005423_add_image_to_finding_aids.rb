class AddImageToFindingAids < ActiveRecord::Migration
  def self.up
    add_attachment :finding_aids, :image
  end

  def self.down
    remove_attachment :finding_aids, :image
  end
end
