class GenresController < ApplicationController
    def index
      @genre = Genre.all
    end

    def show
      @genre = find_genre
    end

    def new
      @genre = Genre.new
    end

    def create
      @genre = Genre.create(set_params)

      redirect_to @genre
    end

    def edit
      @genre = find_genre
    end

    def update
      @genre = find_genre
      @genre.update(set_params)
      redirect_to @genre
    end

    private

    def find_genre
      @genre = Genre.find(params[:id])
    end

    def set_params
      params.require(:genre).permit(:name)
    end
end
