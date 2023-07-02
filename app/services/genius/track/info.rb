module Genius
  module Track
    class Info < Genius::Track::Base
      private

      def track_data
        self_data
          .merge(track_base_data)
          .merge(track_extra_data)
          .merge(with_more_data)
      end

      def track_base_data
        {
          source: source_data,
          player_id:,
          title:,
          artist: artists_base_data,
          artists:
        }
      end

      def track_extra_data
        {
          album: album_data,
          image: image_data,
          profiles_count:,
          release_date:,
          description:
            description_truncated,
          tags: tags_truncated,
          lyrics: lyrics_truncated
        }.compact
      end

      def release_date
        raw_release_date_formatted(
          track
        )
      end

      def description
        track['description_preview']
      end

      def tags_list
        track['tags']
      end

      def lyrics_truncated
        lyrics_formatted.truncate(200)
      end

      def lyrics_formatted
        lyrics.map do |l|
          l.is_a?(Hash) ? l[:text] : l
        end.flatten.join
      end

      def lyrics
        Genius::Track::Info::Lyrics.call(
          track_slug: track['path']
        )[:lyrics]
      end
    end
  end
end
