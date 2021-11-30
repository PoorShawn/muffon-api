module Muffon
  module Profile
    module Bookmarks
      module Artist
        class Destroyer < Muffon::Profile::Base
          private

          def primary_args
            [
              @args[:profile_id],
              @args[:token],
              @args[:bookmark_id]
            ]
          end

          def data
            return forbidden if wrong_profile?

            bookmark_artist&.destroy

            return errors_data if errors?

            { success: true }
          end

          def bookmark_artist
            @bookmark_artist ||=
              profile.bookmark_artists.find_by(
                id: @args[:bookmark_id]
              )
          end

          def errors?
            bookmark_artist&.errors&.any?
          end
        end
      end
    end
  end
end
