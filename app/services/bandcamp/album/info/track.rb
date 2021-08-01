module Bandcamp
  module Album
    class Info
      class Track < Bandcamp::Album::Info
        include Bandcamp::Utils::Track

        def call
          data
        end

        private

        def data
          {
            library_id: library_id,
            title: title,
            bandcamp_id: bandcamp_id,
            player_id: player_id,
            artist: artist_formatted,
            artists: artists,
            duration: duration,
            audio: audio_data
          }.compact
        end

        def track
          @track ||= @args.track
        end
      end
    end
  end
end
