class CreateLightModels < ActiveRecord::Migration[5.0]
  def change
    create_table :light_models do |t|
      t.text :name
      t.integer :lumen_efficacy
      t.text :type
      t.integer :watts

      t.timestamps
    end
  end
end
