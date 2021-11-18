module YouTube
  module Playlist
    class Videos
      class Video < YouTube::Playlist::Videos
        include YouTube::Utils::Video

        def call
          data
        end

        private

        def data
          {
            title: title,
            youtube_id: youtube_id,
            image: image_data_formatted,
            publish_date: publish_date
          }
        end

        def video
          @args[:video]
        end

        def youtube_id
          snippet.dig(
            'resourceId', 'videoId'
          )
        end
      end
    end
  end
end
