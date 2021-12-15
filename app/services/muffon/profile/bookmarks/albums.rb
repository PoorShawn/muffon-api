module Muffon
  module Profile
    module Bookmarks
      class Albums < Muffon::Profile::Bookmarks::Base
        COLLECTION_NAME = 'albums'.freeze
        include Muffon::Utils::Pagination

        private

        def total_items_count
          albums.size
        end

        def albums
          @albums ||= profile.bookmark_albums
        end

        def collection
          albums_paginated.map do |a|
            album_formatted(a)
          end
        end

        def albums_paginated
          albums_sorted
            .limit(limit)
            .offset(offset)
        end

        def albums_sorted
          albums_associated.order(
            created_at: :asc
          )
        end

        def albums_associated
          albums.includes(
            :album,
            [album: :artist]
          )
        end

        def album_formatted(album)
          Muffon::Profile::Bookmarks::Albums::Album.call(
            album: album
          )
        end
      end
    end
  end
end
