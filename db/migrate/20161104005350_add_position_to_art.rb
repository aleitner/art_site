class AddPositionToArt < ActiveRecord::Migration
  def change
    add_column :arts, :position, :integer
  end
end
