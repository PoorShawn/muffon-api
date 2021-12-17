module VK
  module Album
    class Info < VK::Album::Base
      private

      def album_data
        muffon_data
          .merge(album_base_data)
          .merge(album_extra_data)
          .merge(with_more_data)
      end

      def album_base_data
        {
          source_id: SOURCE_ID,
          title: title,
          extra_title: extra_title,
          artist: artist_formatted,
          artists: artists
        }
      end

      def album_extra_data
        {
          image: image_data,
          release_date: release_date,
          plays_count: plays_count,
          tags: tags,
          tracks: tracks_data
        }.compact
      end

      def plays_count
        album['plays']
      end

      def tags_list
        album['genres'].map do |g|
          g['name']
        end
      end

      def tracks_data
        VK::Album::Tracks.call(
          album_id: @args[:album_id],
          owner_id: @args[:owner_id],
          access_key: @args[:access_key],
          profile_id: @args[:profile_id]
        ).dig(:album, :tracks) || []
      end
    end
  end
end
