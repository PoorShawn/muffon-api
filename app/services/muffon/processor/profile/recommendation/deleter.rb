module Muffon
  module Processor
    module Profile
      module Recommendation
        class Deleter < Muffon::Processor::Profile::Base
          private

          def forbidden?
            !valid_profile?
          end

          def data
            recommendation&.update(
              deleted: true
            )

            { success: true }
          end

          def recommendation
            profile
              .recommendations
              .find_by(
                id: @args[:recommendation_id]
              )
          end
        end
      end
    end
  end
end
