class Music < ActiveRecord::Base
	has_many :emotions, through: :music_emotions
	has_many :music_emotions
end
