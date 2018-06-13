class ArtistsController < ApplicationController

  def index
    @artist = Artist.all
  end


  def show
    @artist = find_artist
  end

  def new
    @artist = Artist.new

  end

  def create
    @artist = Artist.create(set_params)

    redirect_to @artist
  end

  def edit
    @artist = find_artist
  end

  def update
    @artist = find_artist
    @artist.update(set_params)

    redirect_to @artist
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def set_params
    params.require(:artist).permit(:name, :bio)
  end

end
