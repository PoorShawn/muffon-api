module LastFM
  module Track
    class Info < LastFM::Track::Base
      private

      def track_data
        track_base_data
          .merge(track_extra_data)
          .merge(with_more_data)
      end

      def track_base_data
        {
          title: title,
          player_id: player_id,
          artist: artist_formatted,
          artists: artists
        }
      end

      def track_extra_data
        {
          album: album_formatted,
          albums: albums,
          image: image_data,
          listeners_count: listeners_count,
          plays_count: plays_count,
          duration: duration,
          description: description_truncated,
          tags: tags
        }
      end

      def albums
        @albums ||= [album_data_formatted].compact
      end

      def album_data_formatted
        return if album.blank?

        { title: album['title'] }
      end

      def album
        @album ||= track['album']
      end

      def image_data
        image_data_formatted(image, 'track')
      end

      def image
        track.dig('album', 'image', -1, '#text')
      end

      def listeners_count
        track['listeners'].to_i
      end

      def plays_count
        track['playcount'].to_i
      end

      def duration
        duration_formatted(
          track['duration'].to_i / 1_000
        )
      end

      def description
        description_formatted(
          track.dig('wiki', 'content')
        )
      end

      def tags_list
        track.dig('toptags', 'tag')
      end
    end
  end
end
