class AddCheckoutToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :checkout, :boolean, :default => false
  end
end
