class CreateFacilities < ActiveRecord::Migration[5.0]
  def change
    create_table :facilities do |t|
      t.text :name
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
