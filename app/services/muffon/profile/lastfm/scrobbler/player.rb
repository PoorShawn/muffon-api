module Muffon
  module Profile
    module LastFM
      module Scrobbler
        class Player < Muffon::Profile::LastFM::Scrobbler::Base
          private

          def primary_args
            super << @args[:duration]
          end

          def payload_base_data
            {
              track: title,
              artist: artist_name,
              album: album_title,
              duration: duration,
              method: 'track.updateNowPlaying',
              format: 'json'
            }.compact
          end

          def api_sig_raw
            [
              ("album#{album_title}" if album_title.present?),
              "api_key#{api_key}",
              "artist#{artist_name}",
              "duration#{duration}",
              'methodtrack.updateNowPlaying',
              "sk#{session_key}",
              "track#{title}"
            ].compact.join
          end
        end
      end
    end
  end
end
