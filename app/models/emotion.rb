class Emotion < ActiveRecord::Base
	has_many :colors, through: :color_emotions
	has_many :color_emotions
	has_many :videos, through: :video_emotions
	has_many :video_emotions
	has_many :musics, through: :music_emotions
	has_many :music_emotions
	has_many :images, through: :image_emotions
	has_many :image_emotions
end
