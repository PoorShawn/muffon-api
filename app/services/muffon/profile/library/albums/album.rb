module Muffon
  module Profile
    module Library
      class Albums
        class Album < Muffon::Profile::Library::Albums
          def call
            data
          end

          private

          def data
            {
              id: id,
              title: title,
              artist: artist_data,
              image: image_data,
              tracks_count: tracks_count
            }
          end

          def id
            profile_album.id
          end

          def profile_album
            @profile_album ||= @args.album
          end

          def title
            profile_album
              .album
              .title
          end

          def artist_data
            {
              id: artist_id,
              name: artist_name
            }
          end

          def artist_id
            profile_album.profile_artist_id
          end

          def artist_name
            profile_album
              .profile_artist
              .artist
              .name
          end

          def image_data
            return image_url_data if no_image?

            {
              original: image,
              large: image(600),
              medium: image(300),
              small: image(100),
              extrasmall: image(50)
            }
          end

          def no_image?
            profile_album.image.blank?
          end

          def image(size = nil)
            profile_album.stored_image_url(size)
          end

          def image_url_data
            LastFM::Utils::Image.call(
              model: 'album',
              image: profile_album.image_url
            )
          end

          def tracks_count
            profile_album
              .profile_tracks
              .size
          end
        end
      end
    end
  end
end
