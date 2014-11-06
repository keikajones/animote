class CreateVideoEmotions < ActiveRecord::Migration
  def change
    create_table :video_emotions do |t|
      t.references :video, index: true
      t.references :emotion, index: true

      t.timestamps
    end
  end
end
