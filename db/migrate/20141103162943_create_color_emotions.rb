class CreateColorEmotions < ActiveRecord::Migration
  def change
    create_table :color_emotions do |t|
      t.references :color, index: true
      t.references :emotion, index: true

      t.timestamps
    end
  end
end
