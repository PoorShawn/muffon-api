module Spotify
  module Search
    class Tracks < Spotify::Search::Base
      private

      def collection_name
        'tracks'
      end

      def collection_type
        'track'
      end

      def collection_data
        results.map do |t|
          {
            title: t['name'],
            artist: artist_name(t),
            album: album_data(t),
            length: length(t),
            audio: audio_data(t)
          }
        end
      end

      def album_data(track)
        {
          title: album(track)['name'],
          artist: artist_name(album(track)),
          images: images(album(track), 'album'),
          spotify_id: album(track)['id']
        }
      end

      def album(track)
        track['album']
      end
    end
  end
end
