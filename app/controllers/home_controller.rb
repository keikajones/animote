class HomeController < ApplicationController 
	def video_form
    @video = Video.new
  end

  def video_success
		@name = params[:name]
		@file = params[:file]
		puts '&' *50
		puts @name
		puts @file
		puts '&' *50
			Video.save name:(@name), file:(@file)
      flash[:notice]="Video Saved for Review"
	end

  def index
  	@emotions = Emotion.all 
  end

  def reroute
    emotion = Emotion.find(params[:emotion]) 
    redirect_to emotion_media_path(emotion.name, params[:media]) 
  end 

  def show  
  	@emotion = Emotion.find_by_name(params[:emotion])  
    @selected = params[:media]   
    @colors = find_colors(@emotion.name) 
    @hexcodes = hexcodes(@colors)
    @music_collection = find_music(@emotion.name)
    @music_file = music_file(@music_collection)
    @music_name = music_name(@music_collection)
    @images = find_images(@emotion.name) 
    @images_name = images_name(@images)  
     
    if @selected == 'video'
      @alternate = 'music'
    elsif @selected == 'music'
      @alternate = 'video'
    else
    end
  end 
 
 
end


