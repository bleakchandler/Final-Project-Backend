class PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.all
        render json: @playlists
    end    

    def show
        @playlist = Playlist.find(params[:id])
        render json: @playlist
    end    

    def new
        @playlist = Playlist.new

        render json: @playlist
    end

    def create
        @playlist = Playlist.create(playlist_params)

        render json: @playlist
    end

    def destroy
        @playlist = Playlist.find(params[:id])  
        @playlist.destroy
    end

    def update
        @playlist = Playlist.find(params[:id])
        @playlist.update(playlist_params)

        render json: @playlist
    end

    private

    def playlist_params
        params.require(:playlist).permit(:spotify_link, :title, :user_id)
    end
end