module Muffon
  module Processor
    module Profile
      module Library
        module Artist
          class Destroyer < Muffon::Processor::Profile::Library::Artist::Base
            private

            def primary_args
              super + [
                @args[:library_id]
              ]
            end

            def process_profile_artist
              profile_artist&.destroy

              { success: true }
            end

            def profile_artist
              @profile_artist ||=
                profile.profile_artists.find_by(
                  id: @args[:library_id]
                )
            end
          end
        end
      end
    end
  end
end
