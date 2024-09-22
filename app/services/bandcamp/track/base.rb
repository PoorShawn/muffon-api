module Bandcamp
  module Track
    class Base < Bandcamp::Base
      include Bandcamp::Utils::Track

      private

      def primary_args
        [
          @args[:artist_id],
          @args[:track_id]
        ]
      end

      def no_data?
        track.blank? ||
          track_info_data.blank?
      end

      def track
        response_data.dig(
          'tracks', 0
        )
      end

      def params
        {
          band_id: @args[:artist_id],
          tralbum_id: @args[:track_id],
          tralbum_type: 't'
        }
      end

      def data
        { track: track_data }
      end

      alias link album_track_link
    end
  end
end
