module Bandcamp
  module Search
    class Artists
      class Artist < Bandcamp::Search::Artists
        include Muffon::Utils::Artist

        def call
          data
        end

        private

        def data
          muffon_data
            .merge(artist_data)
        end

        def artist_data
          {
            bandcamp_slug: bandcamp_slug,
            bandcamp_model: bandcamp_model,
            name: name,
            image: image_data
          }
        end

        def name
          bandcamp_artist_name(
            artist
          )
        end

        def artist
          @args[:artist]
        end

        def bandcamp_slug
          bandcamp_artist_slug(
            artist
          )
        end

        def bandcamp_model
          bandcamp_model_name(
            artist
          )
        end

        def image_data
          image_data_formatted(
            artist[:image], 'artist'
          )
        end
      end
    end
  end
end
