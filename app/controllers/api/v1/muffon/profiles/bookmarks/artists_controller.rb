module API
  module V1
    module Muffon
      module Profiles
        module Bookmarks
          class ArtistsController < API::V1::Muffon::ProfilesController
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
              ::Muffon::Profile::Bookmarks::Artists.call(
                params.slice(
                  *%i[profile_id token page limit]
                )
              )
            end

            def create_data
              ::Muffon::Profile::Bookmarks::Artist::Creator.call(
                params.slice(
                  *%i[profile_id token name]
                )
              )
            end

            def destroy_data
              ::Muffon::Profile::Bookmarks::Artist::Destroyer.call(
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
end
