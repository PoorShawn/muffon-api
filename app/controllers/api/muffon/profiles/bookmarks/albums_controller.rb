module API
  module Muffon
    module Profiles
      module Bookmarks
        class AlbumsController < API::Muffon::ProfilesController
          def index
            render_data_with_status
          end

          def create
            render_data_with_status
          end

          def destroy
            render_data_with_status
          end

          private

          def index_data
            ::Muffon::Profile::Bookmarks::Albums.call(
              params.slice(
                *%i[profile_id token page limit]
              )
            )
          end

          def create_data
            ::Muffon::Processor::Profile::Bookmarks::Album::Creator.call(
              params.slice(
                *%i[profile_id token title artist_name image_url]
              )
            )
          end

          def destroy_data
            ::Muffon::Processor::Profile::Bookmarks::Album::Destroyer.call(
              params.slice(
                *%i[profile_id token bookmark_id]
              )
            )
          end
        end
      end
    end
  end
end
