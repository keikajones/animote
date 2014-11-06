class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable#, :validatable

  #validations
  validates :username, uniqueness: true, length: {minimum: 3, maximum: 16}

  #relationships
  has_many :images
  has_many :videos
  has_many :musics 
end
