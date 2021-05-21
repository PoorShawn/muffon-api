module Bandcamp
  class Base < Muffon::Base
    SOURCE_ID = 'bandcamp'.freeze
    BASE_LINK = 'https://bandcamp.com/api/mobile/22'.freeze

    def call
      return handlers.bad_request if not_all_args?
      return handlers.not_found if no_data?

      data
    end

    private

    def no_data?
      response_data.blank? ||
        response_data['error']
    end

    def response_data
      @response_data ||= JSON.parse(response)
    end

    def response
      RestClient.get(link, headers)
    end

    def album_track_link
      "#{BASE_LINK}/tralbum_details"
    end

    def artist_label_link
      "#{BASE_LINK}/band_details"
    end

    def headers
      { params: params }
    end

    def params
      {}
    end

    def image_data_formatted(image)
      Bandcamp::Utils::Image.call(
        image: image
      )
    end

    def image(data)
      'https://f4.bcbits.com/img'\
        "/a#{data['art_id']}_10.jpg"
    end
  end
end
