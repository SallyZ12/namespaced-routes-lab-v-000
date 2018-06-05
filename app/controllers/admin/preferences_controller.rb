class Admin::PreferencesController < ApplicationController

    def index
      @preference = Preference.first_or_create(artist_sort_order: "DESC", song_sort_order: "ASC", allow_create_artists: true, allow_create_songs: true)
    end




private

def preference_params
  params.require(:preference).permit(:song_sort_order, :artist_song_order, :allow_create_songs, :allow_create_artists)
end


end
