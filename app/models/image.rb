class Image < ActiveRecord::Base
	has_many :emotions, through: :image_emotions
	has_many :image_emotions
	belongs_to :emotions
end
