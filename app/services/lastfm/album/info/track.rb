module LastFM
  module Album
    class Info
      class Track < LastFM::Album::Info
        include LastFM::Utils::Track

        def call
          data
        end

        private

        def data
          muffon_data
            .merge(track_data)
        end

        def track_data
          {
            player_id: player_id,
            source_id: SOURCE_ID,
            title: title,
            artists: artists,
            duration: duration,
            duration_seconds: duration_seconds
          }
        end

        def track
          @args[:track]
        end
      end
    end
  end
end
