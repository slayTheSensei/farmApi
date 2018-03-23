class CreatePhenotypes < ActiveRecord::Migration[5.0]
  def change
    create_table :phenotypes do |t|
      t.text :name

      t.timestamps
    end
  end
end
