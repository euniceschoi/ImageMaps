class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.integer :width
      t.integer :height

      t.timestamps null: false
    end
  end
end