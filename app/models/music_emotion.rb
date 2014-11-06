class MusicEmotion < ActiveRecord::Base
	belongs_to :music 
	belongs_to :emotion
end
