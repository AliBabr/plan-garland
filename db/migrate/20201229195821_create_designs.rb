class CreateDesigns < ActiveRecord::Migration[5.2]
  def change
    create_table :designs do |t|
      t.string :name
      t.integer :type
      t.integer :height
      t.integer :width
      t.integer :ballon_size
      t.integer :ballon_count

      t.timestamps
    end
  end
end
