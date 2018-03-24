class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.references :room, foreign_key: true
      t.references :strain, foreign_key: true
      t.references :phase, foreign_key: true
      t.text :tag

      t.timestamps
    end
  end
end
