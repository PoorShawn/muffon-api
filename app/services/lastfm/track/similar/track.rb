module LastFM
  module Track
    class Similar
      class Track < LastFM::Track::Similar
        include LastFM::Utils::Track

        def call
          data
        end

        private

        def data
          muffon_data.merge(track_data)
        end

        def track_data
          {
            title: title,
            player_id: player_id,
            artist: artist_formatted,
            artists: artists,
            duration: duration
          }
        end

        def track
          @track ||= @args.track
        end
      end
    end
  end
end
