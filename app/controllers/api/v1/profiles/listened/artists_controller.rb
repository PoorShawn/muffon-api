module API
  module V1
    module Profiles
      module Listened
        class ArtistsController < API::V1::ProfilesController
          def create
            render_data_with_status
          end

          def destroy
            render_data_with_status
          end

          private

          def create_data
            Muffon::Profile::Listened::Artists::Artist::Creator.call(
              params.slice(
                *%i[profile_id token artist]
              )
            )
          end

          def destroy_data
            Muffon::Profile::Listened::Artists::Artist::Destroyer.call(
              params.slice(
                *%i[profile_id token artist_id]
              )
            )
          end
        end
      end
    end
  end
end
