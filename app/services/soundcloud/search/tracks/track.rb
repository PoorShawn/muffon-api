module SoundCloud
  module Search
    class Tracks
      class Track < SoundCloud::Search::Tracks
        include SoundCloud::Utils::Track

        def call
          data
        end

        private

        def data
          track_base_data
            .merge(track_extra_data)
        end

        def track_base_data
          {
            id: id,
            player_id: player_id,
            soundcloud_id: soundcloud_id,
            title: title,
            artist: artist_formatted,
            artists: artists
          }
        end

        def track
          @track ||= @args.track
        end

        def track_extra_data
          {
            image: image_data,
            duration: duration,
            duration_seconds: duration_seconds,
            audio: audio_data
          }
        end
      end
    end
  end
end
