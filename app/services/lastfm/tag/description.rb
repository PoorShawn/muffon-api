module LastFM
  module Tag
    class Description < LastFM::Tag::Info
      private

      def tag_data
        { description: }
      end
    end
  end
end
