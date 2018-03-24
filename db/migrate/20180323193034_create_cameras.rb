class CreateCameras < ActiveRecord::Migration[5.0]
  def change
    create_table :cameras do |t|
      t.references :room, foreign_key: true
      t.text :video_feed

      t.timestamps
    end
  end
end
