module API
  module Muffon
    module Profiles
      module Library
        class AlbumsController < API::Muffon::Profiles::LibraryController
          def index
            render_data_with_status
          end

          def create
            render_data_with_status
          end

          def info
            render_data_with_status
          end

          def tracks
            render_data_with_status
          end

          def playlists
            render_data_with_status
          end

          def destroy
            render_data_with_status
          end

          private

          def index_data
            ::Muffon::Profile::Library::Albums.call(
              params.slice(
                *%i[
                  profile_id token page limit
                  other_profile_id
                ]
              )
            )
          end

          def create_data
            ::Muffon::Processor::Profile::Library::Album::Creator.call(
              params.slice(
                *%i[
                  profile_id token title
                  artist_name tracks image_url
                ]
              )
            )
          end

          def info_data
            ::Muffon::Profile::Library::Album::Info.call(
              params.slice(
                *%i[
                  profile_id token library_id
                  other_profile_id
                ]
              )
            )
          end

          def tracks_data
            ::Muffon::Profile::Library::Album::Tracks.call(
              params.slice(
                *%i[
                  profile_id token library_id
                  page limit other_profile_id
                ]
              )
            )
          end

          def playlists_data
            ::Muffon::Profile::Library::Album::Playlists.call(
              params.slice(
                *%i[
                  profile_id token
                  library_id page limit
                ]
              )
            )
          end

          def destroy_data
            ::Muffon::Processor::Profile::Library::Album::Destroyer.call(
              params.slice(
                *%i[profile_id token library_id]
              )
            )
          end
        end
      end
    end
  end
end
