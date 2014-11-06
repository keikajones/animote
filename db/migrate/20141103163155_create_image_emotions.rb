class CreateImageEmotions < ActiveRecord::Migration
  def change
    create_table :image_emotions do |t|
      t.references :image, index: true
      t.references :emotion, index: true

      t.timestamps
    end
  end
end
