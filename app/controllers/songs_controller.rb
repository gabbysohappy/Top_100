class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end
  
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @song.destroy
    redirect_to songs_path(@song)
  end 

  private 

     def song_params
        params.require(:song).permit(:name, :rank, :genre)
     end 

     def set_song
      @song = Song.find(params[:id])
    end
end
