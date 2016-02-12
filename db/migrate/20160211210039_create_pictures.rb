class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.integer :width
      t.integer :height
      t.string :picture_url
      t.timestamps null: false
    end
  end
end
