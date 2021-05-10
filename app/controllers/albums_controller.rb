class AlbumsController < ApplicationController
    def index
        @albums = Album.all
        render json: Album.album_array_to_json(@albums)
    end    

    def show
        @album = Album.find(params[:id])
        render json: @album.to_json
    end    

    def new
        @album = Album.new

        render json: @album
    end

    def create
        @album = Album.create(album_params)

        render json: @album.to_json
    end

    def destroy
        @album = Album.find(params[:id])  
        @album.destroy
    end

    def update
        @album = Album.find(params[:id])
        @album.update(album_params)

        render json: @album.to_json
    end

    private

    def album_params
        params.require(:album).permit(:title, :artist, :album_art, :rating, :comment, :day_id, :release_date, :spotify_link)
    end
end