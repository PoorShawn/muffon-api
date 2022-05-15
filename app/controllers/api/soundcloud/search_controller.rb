module API
  module SoundCloud
    class SearchController < API::BaseController
      def artists
        render_data_with_status
      end

      def albums
        render_data_with_status
      end

      def tracks
        render_data_with_status
      end

      private

      def artists_data
        ::SoundCloud::Search::Artists.call(
          params.slice(
            *%i[query profile_id page limit]
          )
        )
      end

      def albums_data
        ::SoundCloud::Search::Albums.call(
          params.slice(
            *%i[query profile_id page limit]
          )
        )
      end

      def tracks_data
        ::SoundCloud::Search::Tracks.call(
          params.slice(
            *%i[query profile_id page limit]
          )
        )
      end
    end
  end
end
