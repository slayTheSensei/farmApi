class CreateStrains < ActiveRecord::Migration[5.0]
  def change
    create_table :strains do |t|
      t.text :name
      t.references :phenotype, foreign_key: true

      t.timestamps
    end
  end
end
