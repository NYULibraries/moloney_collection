class Addfieldstoartists < ActiveRecord::Migration
  def change
    add_column :artists, :recommended_citation, :text
  end
end
