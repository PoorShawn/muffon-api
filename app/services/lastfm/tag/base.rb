module LastFM
  module Tag
    class Base < LastFM::Web
      private

      def primary_args
        [@args.tag]
      end

      def link
        "https://www.last.fm/tag/#{tag_name}/#{collection}"
      end

      def tag_name
        CGI.escape(@args.tag.to_s)
      end

      def collection
        @collection ||= self.class.name.demodulize.downcase
      end

      def data
        { tag: tag_data }
      end

      def tag_data
        {
          name: name,
          page: page,
          total_pages: total_pages,
          collection.to_sym => send(collection)
        }
      end

      def name
        response_data.css('title').text.match(
          /Top (.+) #{collection}/
        )[1]
      end

      def total_pages
        return 0 if last_page.blank?

        last_page.text.strip.to_i
      end

      def last_page
        response_data.css('.pagination-page').last
      end
    end
  end
end
