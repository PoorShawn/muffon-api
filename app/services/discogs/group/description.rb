module Discogs
  module Group
    class Description < Discogs::Group::Base
      private

      def group_data
        {
          title: title,
          artist: artist_data(response_data),
          description: description
        }
      end
    end
  end
end
