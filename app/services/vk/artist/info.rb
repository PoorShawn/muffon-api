module VK
  module Artist
    class Info < VK::Artist::Base
      API_METHOD = 'audio.getArtistById'.freeze

      private

      def signature
        "/method/#{api_method}"\
          "?access_token=#{access_token}"\
          '&v=5.131'\
          "&artist_id=#{artist_id}"\
          "#{api_secret}"
      end

      def artist_params
        { artist_id: artist_id }
      end

      def artist_data
        { name: name }
      end

      def name
        response_data['name']
      end
    end
  end
end
