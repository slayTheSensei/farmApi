class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.references :cultivator, foreign_key: true
      t.references :facility, foreign_key: true
      t.integer :size
      t.string :unit

      t.timestamps
    end
  end
end
