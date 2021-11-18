module Bandcamp
  module Search
    class Albums
      class Album < Bandcamp::Search::Albums
        include Muffon::Utils::Album

        def call
          data
        end

        private

        def data
          muffon_data
            .merge(album_data)
        end

        def album_data
          {
            source_id: SOURCE_ID,
            bandcamp_slug: bandcamp_slug,
            bandcamp_model: bandcamp_model,
            title: title,
            artist: artist_formatted,
            artists: artists,
            image: image_data
          }
        end

        def title
          model_title(album)
        end

        def album
          @args[:album]
        end

        def bandcamp_slug
          bandcamp_title_slug(
            album
          )
        end

        def bandcamp_model
          bandcamp_model_name(
            album
          )
        end

        def artists
          [artist]
        end

        def artist
          artist_data_formatted(
            album
          )
        end

        def image_data
          image_data_formatted(
            album[:image], 'album'
          )
        end
      end
    end
  end
end
