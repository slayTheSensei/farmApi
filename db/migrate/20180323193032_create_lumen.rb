class CreateLumen < ActiveRecord::Migration[5.0]
  def change
    create_table :lumen do |t|
      t.references :sensor, foreign_key: true
      t.numeric :value

      t.timestamps
    end
  end
end
