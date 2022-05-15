module API
  module VK
    class ArtistsController < API::BaseController
      def albums
        render_data_with_status
      end

      private

      def albums_data
        ::VK::Artist::Albums.call(
          params.slice(
            *%i[artist_id profile_id page limit]
          )
        )
      end
    end
  end
end
