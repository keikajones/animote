class VideoEmotion < ActiveRecord::Base
	belongs_to :video 
	belongs_to :emotion
end
