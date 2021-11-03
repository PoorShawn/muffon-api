module YandexMusic
  module Artist
    class Albums
      class Album < YandexMusic::Artist::Albums
        include YandexMusic::Utils::Album

        def call
          data
        end

        private

        def data
          muffon_data.merge(album_data)
        end

        def album_data
          {
            id: id,
            source_id: SOURCE_ID,
            yandex_music_id: yandex_music_id,
            title: title,
            extra_title: extra_title,
            image: image_data,
            release_date: release_date,
            listeners_count: listeners_count
          }.compact
        end

        def album
          @album ||= @args.album
        end
      end
    end
  end
end
