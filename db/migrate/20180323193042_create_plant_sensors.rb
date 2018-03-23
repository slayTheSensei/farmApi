class CreatePlantSensors < ActiveRecord::Migration[5.0]
  def change
    create_table :plant_sensors do |t|
      t.references :plant, foreign_key: true
      t.numeric :ph
      t.numeric :hydration

      t.timestamps
    end
  end
end
