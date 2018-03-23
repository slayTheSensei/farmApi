class CreateLightings < ActiveRecord::Migration[5.0]
  def change
    create_table :lightings do |t|
      t.references :room, foreign_key: true
      t.references :light_model, foreign_key: true
      t.integer :area

      t.timestamps
    end
  end
end
