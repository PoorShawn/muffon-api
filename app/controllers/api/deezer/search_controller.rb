module API
  module Deezer
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
        ::Deezer::Search::Artists.call(
          params.slice(
            *%i[query profile_id page limit]
          )
        )
      end

      def albums_data
        ::Deezer::Search::Albums.call(
          params.slice(
            *%i[query profile_id page limit]
          )
        )
      end

      def tracks_data
        ::Deezer::Search::Tracks.call(
          params.slice(
            *%i[query profile_id page limit]
          )
        )
      end
    end
  end
end
