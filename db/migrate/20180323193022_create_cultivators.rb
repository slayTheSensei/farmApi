class CreateCultivators < ActiveRecord::Migration[5.0]
  def change
    create_table :cultivators do |t|
      t.references :user, foreign_key: true
      t.text :company
      t.text :username
      t.text :profile_img
      t.text :phone_number

      t.timestamps
    end
  end
end
