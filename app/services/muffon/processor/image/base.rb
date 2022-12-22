module Muffon
  module Processor
    module Image
      class Base < Muffon::Base
        private

        def primary_args
          [
            @args[:model],
            @args[:model_id]
          ]
        end

        def no_data?
          model.blank?
        end

        def model
          @model ||=
            model_class.find_by(
              id: @args[:model_id]
            )
        end

        def model_class
          @args[:model]
            .camelize
            .constantize
        end

        def image_file_data
          @image_file_data ||=
            Muffon::Utils::Image::File.call(
              image: image_file
            )[:image]
        end

        def image_file
          @args[:image_file]
        end
      end
    end
  end
end
