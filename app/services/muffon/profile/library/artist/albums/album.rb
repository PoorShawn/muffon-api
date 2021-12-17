module Muffon
  module Profile
    module Library
      module Artist
        class Albums
          class Album < Muffon::Profile::Library::Artist::Albums
            include Muffon::Utils::Album

            def call
              data
            end

            private

            def data
              {
                id: id,
                favorite_id: favorite_id,
                title: title,
                image: image_data,
                tracks_count: tracks_count,
                created: created
              }.compact
            end

            def id
              profile_album.id
            end

            def profile_album
              @args[:album]
            end

            def artist_name
              profile_album
                .album
                .artist
                .name
            end

            def title
              profile_album
                .album
                .title
            end

            def image_data
              profile_album.image_data
            end

            def tracks_count
              profile_album.profile_tracks_count
            end

            def created
              datetime_formatted(
                profile_album.created_at
              )
            end
          end
        end
      end
    end
  end
end
