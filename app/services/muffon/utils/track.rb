module Muffon
  module Utils
    module Track
      include Muffon::Utils::Base

      private

      def player_id
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

      def library_id
        self_data('track')[
          :library_track_id
        ]
      end

      def track_id
        find_track.id
      end

      def favorite_id
        self_data('track')[
          :favorite_track_id
        ]
      end

      def bookmark_id
        self_data('track')[
          :bookmark_track_id
        ]
      end

      def listened_id
        self_data('track')[
          :listened_track_id
        ]
      end

      def playlist_track_id
        find_playlist_track&.id
      end

      def find_playlist_track
        return if @args[:playlist_id].blank?

        PlaylistTrack.find_by(
          playlist_id: @args[:playlist_id],
          track_id:
        )
      end

      def duration
        duration_formatted(
          duration_seconds
        )
      end
    end
  end
end
