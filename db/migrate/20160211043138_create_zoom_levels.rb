class CreateZoomLevels < ActiveRecord::Migration
  def change
    create_table :zoom_levels do |t|
      t.integer :level
      t.integer :rows
      t.integer :columns
      t.timestamps null: false
    end
  end
end
