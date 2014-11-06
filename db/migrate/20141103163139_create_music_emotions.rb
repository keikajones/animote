class CreateMusicEmotions < ActiveRecord::Migration
  def change
    create_table :music_emotions do |t|
      t.references :music, index: true
      t.references :emotion, index: true

      t.timestamps
    end
  end
end
