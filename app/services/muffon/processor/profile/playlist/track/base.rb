module Muffon
  module Processor
    module Profile
      module Playlist
        module Track
          class Base < Muffon::Profile::Playlist::Base
            private

            def primary_args
              [
                @args[:profile_id],
                @args[:token]
              ]
            end

            def forbidden?
              !valid_profile?
            end

            def data
              process_playlist_track
            end

            def playlist_data
              { tracks_count: playlist.tracks_count }
            end
          end
        end
      end
    end
  end
end
