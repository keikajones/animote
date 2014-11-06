class Color < ActiveRecord::Base
	has_many :emotions, through: :color_emotions
	has_many :color_emotions
end
