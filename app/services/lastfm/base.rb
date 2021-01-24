module LastFM
  class Base < Muffon::Base
    def call
      return handlers.bad_request if not_all_args?
      return handlers.not_found if no_data?

      data
    end

    private

    def primary_args
      []
    end

    def response
      RestClient.get(link, headers)
    end

    def headers
      { params: params }
    end

    def images_data(data_or_image, model)
      image = data_or_image if data_or_image.is_a?(String)
      data = data_or_image if data_or_image.is_a?(Hash)

      LastFM::Utils::Images.call(
        data: data, image: image, model: model
      )
    end
  end
end
