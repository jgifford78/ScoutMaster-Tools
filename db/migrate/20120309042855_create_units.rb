class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :type
      t.integer :number
      t.integer :group
      t.string :sponsor_name
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
