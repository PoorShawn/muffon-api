module Muffon
  module Utils
    module Track
      private

      def player_id
        return '1' if test?

        find_track.player_id
      end

      def find_track
        @find_track ||=
          ::Track.with_artist_title(
            find_artist.id, title
          )
      end

      def find_artist
        @find_artist ||=
          ::Artist.with_name(
            artist_name
          )
      end

      def find_album
        return if album_title.blank?

        @find_album ||=
          ::Album.with_artist_title(
            find_artist.id, album_title
          )
      end

      def self_data
        Muffon::Self.call(
          profile_id:,
          token: @args[:token],
          model: 'track',
          model_id: track_id
        )
      end

      def profile_id
        @args[:profile_id]
      end

      def track_id
        find_track.id
      end

      def profiles_count
        return if test?

        find_track
          .profiles
          .count
      end
    end
  end
end
