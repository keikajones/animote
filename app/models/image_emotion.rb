class ImageEmotion < ActiveRecord::Base
	belongs_to :image 
	belongs_to :emotion 
end
