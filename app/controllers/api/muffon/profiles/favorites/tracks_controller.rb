module API
  module Muffon
    module Profiles
      module Favorites
        class TracksController < API::Muffon::ProfilesController
          def index; end

          def create; end

          def destroy; end

          private

          def index_data
            ::Muffon::Profile::Favorites::Tracks.call(
              params.slice(
                *%i[
                  profile_id other_profile_id
                  token page limit order
                ]
              )
            )
          end

          def create_data
            ::Muffon::Processor::Profile::Favorites::Track::Creator.call(
              params.slice(
                *%i[
                  profile_id token title
                  artist album image
                  source audio album_source
                ]
              )
            )
          end

          def destroy_data
            ::Muffon::Processor::Profile::Favorites::Track::Destroyer.call(
              params.slice(
                *%i[profile_id token favorite_id]
              )
            )
          end
        end
      end
    end
  end
end
