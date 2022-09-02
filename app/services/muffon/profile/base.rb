module Muffon
  module Profile
    class Base < Muffon::Base
      PARAMS = %i[
        email
        password
        password_confirmation
        nickname
        image
        gender
        birthdate
        country
        city
        private
      ].freeze

      def call
        return forbidden if no_rights?

        super
      end

      private

      def no_rights?
        profile.private &&
          wrong_profile?
      end

      def primary_args
        [@args[:profile_id]]
      end

      def no_data?
        profile.blank?
      end

      def wrong_profile?
        profile.token != @args[:token]
      end

      def profile_params
        PARAMS.reject do |p|
          %i[image].include?(p)
        end
      end

      def process_image
        profile.process_image(
          @args[:image]
        )
      end

      def data
        { profile: profile_data }
      end

      def nickname
        profile.nickname
      end
    end
  end
end
