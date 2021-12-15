module Muffon
  module Profile
    module Favorites
      class Tracks < Muffon::Profile::Favorites::Base
        COLLECTION_NAME = 'tracks'.freeze
        include Muffon::Utils::Pagination

        private

        def total_items_count
          tracks.size
        end

        def tracks
          @tracks ||= profile.favorite_tracks
        end

        def collection
          tracks_paginated.map do |t|
            track_formatted(t)
          end
        end

        def tracks_paginated
          tracks_sorted
            .limit(limit)
            .offset(offset)
        end

        def tracks_sorted
          tracks_associated.order(
            created_at: :asc
          )
        end

        def tracks_associated
          tracks
            .includes(
              :track,
              [track: :artist],
              :album
            )
        end

        def track_formatted(track)
          Muffon::Profile::Favorites::Tracks::Track.call(
            track: track
          )
        end
      end
    end
  end
end
