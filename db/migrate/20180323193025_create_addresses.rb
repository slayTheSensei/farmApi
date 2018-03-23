class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.text :address
      t.text :address2
      t.references :city, foreign_key: true
      t.integer :zipcode

      t.timestamps
    end
  end
end
