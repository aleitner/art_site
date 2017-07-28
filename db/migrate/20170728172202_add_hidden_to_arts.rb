class AddHiddenToArts < ActiveRecord::Migration
  def change
    add_column :arts, :hidden, :boolean, default: false
  end
end
