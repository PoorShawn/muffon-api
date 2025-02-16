class Profile
  module Recommendations
    module Artists
      class ClearerWorker < Worker::Base
        def perform(args)
          Muffon::Processor::Profile::Recommendations::Artists::Clearer.call(
            args_formatted(args)
          )
        end
      end
    end
  end
end
