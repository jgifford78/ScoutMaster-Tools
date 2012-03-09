class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :equipment_category_id

      t.timestamps
    end
  end
end
