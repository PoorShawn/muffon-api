module LastFM
  module Top
    class Base < LastFM::API::Base
      include LastFM::API::Paginated

      private

      def service_info
        {
          api_method: "chart.getTop#{collection_name.capitalize}",
          response_data_node: collection_name
        }
      end

      def params
        super.merge(pagination_params)
      end

      def data
        { top: top_data }
      end

      def top_data
        {
          page: paginated_data[:page],
          total_pages: paginated_data[:total_pages],
          collection_name.to_sym => collection_data
        }
      end

      def raw_collection
        response_data[model_name]
      end
    end
  end
end
