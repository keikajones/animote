class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters 
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :fname, :lname, :email, :password) }
	end
 	



	#helper methods
 	def emotion_id(emotion)
		Emotion.where(name: emotion).first.id
	end

	def find_images(emotion)
		img_ids = []
  	imgs = []

		ImageEmotion.where(emotion_id: emotion_id(emotion)).each do |ie|
      img_ids << ie.image_id
    end

    img_ids.each do |id|
      img = Image.find(id)
    	imgs << img
    end

    return imgs
	end

	def images_name(music_collection)
		array = []
		music_collection.each do |image|
  		array << image.name
		end

		return array.join(',') 
	end 

	def find_videos(emotion)
		vid_ids = []
  	vids = []

		VideoEmotion.where(emotion_id: emotion_id(emotion)).each do |ve|
      vid_ids << ve.video_id
    end

    vid_ids.each do |id|
      vid = Video.find(id)
    	vids << vid
    end

    return vids
	end

	
	def find_music(emotion)
		music_ids = []
		musics = []

		MusicEmotion.where(emotion_id: emotion_id(emotion)).each do |me|
			music_ids << me.music_id
		end

		music_ids.each do |id|
			music = Music.find(id)
			musics << music
		end

		return musics
	end 

	def music_file(music_collection)
		array = []
		music_collection.each do |music|
  		array << music.file.split('/')[-1]
		end

		return array.join(',') 
	end 

	def music_name(music_collection)
		array = []
		music_collection.each do |music|
  		array << music.name
		end

		return array.join(',') 
	end 
	
	def find_colors(emotion)
		colors_ids = []
  	cols = []

		ColorEmotion.where(emotion_id: emotion_id(emotion)).each do |ce|
      colors_ids << ce.color_id
    end

    colors_ids.each do |id|
      col = Color.find(id)
    	cols << col
    end

    return cols
	end

	def get_color(emotion)
		findColors = find_colors(emotion)
		findColors[rand(0..findColors.size-1)]
	end

	def hexcodes(colors)
		# #returns a list of hexcodes as a string
		array = []

		colors.each do |color|
			array << color.hexcode
		end 
		return array.join(',') 
	end

end
