module LastFM
  module Search
    class Tracks < LastFM::Search::Base
      API_METHOD = 'track.search'.freeze
      COLLECTION_NAME = 'tracks'.freeze
      MODEL_NAME = 'track'.freeze
      TOTAL_LIMIT = 500

      private

      def total_limit
        TOTAL_LIMIT
      end

      def collection_item_data_formatted(track)
        LastFM::Search::Tracks::Track.call(
          track:,
          profile_id: @args[:profile_id],
          playlist_id: @args[:playlist_id]
        )
      end
    end
  end
end
