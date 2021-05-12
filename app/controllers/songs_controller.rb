class SongsController < ApplicationController
    def index
        @songs = Song.all
        render json: @songs
    end    

    def show
        @song = Song.find(params[:id])
        render json: @song
    end    

    def new
        @song = Song.new

        render json: @song
    end

    def create
        @song = Song.create(song_params)

        render json: @song
    end

    def destroy
        @songs = Song.all.where(album_id: params[:id]) 
        @songs.destroy_all
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params)

        render json: @song
    end

    private

    def song_params
        params.require(:song).permit(:title, :artist, :rating, :comment, :album_id)
    end
end
