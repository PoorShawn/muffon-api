module LastFM
  module Tag
    class Info < LastFM::Tag::API::Base
      private

      def tag_data
        {
          name: response_data['name'],
          taggings_count: response_data['total'],
          taggers_count: response_data['reach'],
          description: description_truncated
        }
      end
    end
  end
end
