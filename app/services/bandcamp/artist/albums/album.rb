module Bandcamp
  module Artist
    class Albums
      class Album < Bandcamp::Artist::Albums
        include Bandcamp::Utils::Album

        def call
          data
        end

        private

        def data
          muffon_data.merge(album_data)
        end

        def album_data
          {
            title: title,
            bandcamp_id: bandcamp_id,
            bandcamp_model: bandcamp_model,
            image: image_data,
            release_date: release_date,
            listeners_count: listeners_count
          }.compact
        end

        def album
          @album ||= @args.album
        end
      end
    end
  end
end
