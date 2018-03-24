class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.references :room, foreign_key: true
      t.text :type
      t.text :model
      t.boolean :isOn

      t.timestamps
    end
  end
end
