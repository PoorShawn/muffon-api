class Profile
  module Recommendations
    class CreatorWorker < Worker::Base
      def perform(args)
        Muffon::Processor::Profile::Recommendations::Creator.call(
          args_formatted(args)
        )
      end
    end
  end
end
