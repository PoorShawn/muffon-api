module YouTube
  module Search
    class Videos < YouTube::Search::Base
      private

      def search_data
        {
          prev_page:,
          next_page:,
          videos: videos.compact
        }.compact
      end

      def video_data_formatted(video)
        YouTube::Search::Videos::Video.call(
          video:,
          profile_id: @args[:profile_id],
          token: @args[:token]
        )
      end
    end
  end
end
