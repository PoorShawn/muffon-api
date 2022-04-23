module YouTube
  module Channel
    class Base < YouTube::Base
      private

      def primary_args
        [@args[:channel_id]]
      end

      def link
        "#{BASE_LINK}/channels"
      end

      def params
        super.merge(
          channel_params
        )
      end

      def channel_params
        {
          id: @args[:channel_id],
          part: 'snippet,contentDetails'
        }
      end

      def data
        { channel: channel_data }
      end

      def channel_base_data
        { title: }
      end
    end
  end
end
