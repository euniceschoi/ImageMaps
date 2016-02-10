class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.integer :width
      t.integer :height
      t.string :image_url

      t.timestamps null: false
    end
  end
end
