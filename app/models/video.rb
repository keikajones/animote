class Video < ActiveRecord::Base
	has_many :emotions, through: :video_emotions
	has_many :video_emotions
end
