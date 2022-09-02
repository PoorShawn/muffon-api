module API
  module Muffon
    module Profiles
      class LibraryController < API::Muffon::ProfilesController
        def info
          render_data_with_status
        end

        private

        def info_data
          ::Muffon::Profile::Library::Info.call(
            params.slice(
              *%i[profile_id token]
            )
          )
        end
      end
    end
  end
end
