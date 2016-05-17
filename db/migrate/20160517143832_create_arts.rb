class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
