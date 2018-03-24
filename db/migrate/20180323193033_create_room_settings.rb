class CreateRoomSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :room_settings do |t|
      t.references :room, foreign_key: true
      t.numeric :humidity
      t.numeric :temperature
      t.numeric :air_quality

      t.timestamps
    end
  end
end
