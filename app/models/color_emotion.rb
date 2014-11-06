class ColorEmotion < ActiveRecord::Base
	belongs_to :color
	belongs_to :emotion
end
