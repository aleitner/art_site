class AddTagsToArts < ActiveRecord::Migration
  def change
    add_column :arts, :tags, :string
  end
end
