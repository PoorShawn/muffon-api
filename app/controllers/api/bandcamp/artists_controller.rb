module API
  module Bandcamp
    class ArtistsController < API::BaseController
      def albums; end

      private

      def albums_data
        ::Bandcamp::Artist::Albums.call(
          params.slice(
            *%i[artist_id profile_id page limit]
          )
        )
      end
    end
  end
end
