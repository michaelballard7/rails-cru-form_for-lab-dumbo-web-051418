class SongsController < ApplicationController

    def index
      @songs = Song.all
    end


    def show
      @song = find_song
    end

    def new
      @song = Song.new
    end

    def create
      @song = Song.create(set_params)
      redirect_to @song
    end

    def edit
      @song = find_song
    end

    def update
      @song = find_song
      @song.update(set_params)
      redirect_to @song
    end

    private

    def find_song
      @song = Song.find(params[:id])
    end

    def set_params

      params.require(:song).permit(:name, :artist_id, :genre_id)

    end

end
