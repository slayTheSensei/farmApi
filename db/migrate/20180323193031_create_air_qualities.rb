class CreateAirQualities < ActiveRecord::Migration[5.0]
  def change
    create_table :air_qualities do |t|
      t.references :sensor, foreign_key: true
      t.numeric :value

      t.timestamps
    end
  end
end
