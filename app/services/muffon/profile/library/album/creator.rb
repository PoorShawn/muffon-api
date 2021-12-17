module Muffon
  module Profile
    module Library
      module Album
        class Creator < Muffon::Profile::Library::Base
          include Muffon::Utils::Album

          private

          def primary_args
            [
              @args[:profile_id],
              @args[:token],
              @args[:title],
              @args[:artist_name]
            ]
          end

          def data
            return forbidden if wrong_profile?

            profile_album

            return errors_data if errors?

            process_tracks
            process_image

            { library_id: library_id }
          end

          def profile_album
            @profile_album ||=
              profile.profile_albums.where(
                album_id: find_album.id,
                profile_artist_id: profile_artist.id
              ).first_or_create
          end

          def title
            @args[:title]
          end

          def artist_name
            @args[:artist_name]
          end

          def profile_artist
            profile.profile_artists.where(
              artist_id: find_album.artist_id
            ).first_or_create
          end

          def errors?
            profile_album.errors.any?
          end

          def process_tracks
            return if @args[:tracks].blank?

            @args[:tracks].each do |t|
              process_track(t)
            end
          end

          def process_track(track)
            Muffon::Profile::Library::Album::Creator::Track.call(
              track: track,
              profile_id: @args[:profile_id],
              profile_album_id: profile_album.id
            )
          end

          def process_image
            profile_album.process_image(
              @args[:image_url]
            )
          end

          def library_id
            profile_album.id
          end
        end
      end
    end
  end
end
