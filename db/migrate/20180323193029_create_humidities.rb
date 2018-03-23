class CreateHumidities < ActiveRecord::Migration[5.0]
  def change
    create_table :humidities do |t|
      t.references :sensor, foreign_key: true
      t.numeric :value

      t.timestamps
    end
  end
end
