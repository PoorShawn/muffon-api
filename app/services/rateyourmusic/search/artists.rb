module RateYourMusic
  module Search
    class Artists < RateYourMusic::Search::Base
      COLLECTION_NAME = 'artists'.freeze
      SEARCH_TYPE = 'a'.freeze
      TOTAL_LIMIT = 200

      private

      def collection_item_data_formatted(artist)
        RateYourMusic::Search::Artists::Artist.call(
          artist:
        )
      end
    end
  end
end
