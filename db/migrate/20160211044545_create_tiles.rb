class CreateTiles < ActiveRecord::Migration
  def change
    create_table :tiles do |t|
      t.integer :zoom_level
      t.integer :row
      t.integer :column
      t.string :tile_url
      t.timestamps null: false
    end
  end
end
