Rails.application.routes.draw do
  scope :api, module: :api do
    scope :v1, module: :v1 do

      # LastFM

      namespace :lastfm do
        namespace :artists, as: :artist, constraints: { artist: /[^\/]+/ } do
          scope ':artist' do
            get '', action: :info
            get 'description'
            get 'tags'
            get 'images'
            get 'similar'
            get 'albums'
            namespace :albums, as: :album, constraints: { album: /[^\/]+/ } do
              scope ':album' do
                get '', action: :info
                get 'description'
                get 'tags'
                get 'listeners_count'
              end
            end
            get 'tracks'
            namespace :tracks, as: :track, constraints: { track: /[^\/]+/ } do
              scope ':track' do
                get '', action: :info
                get 'description'
                get 'tags'
                get 'similar'
              end
            end
          end
        end

        namespace :search do
          get 'artists'
          get 'albums'
          get 'tracks'
        end

        namespace :tags, as: :tag, constraints: { tag: /[^\/]+/ } do
          scope ':tag' do
            get '', action: :info
            get 'description'
            get 'artists'
            get 'albums'
            get 'tracks'
            get 'similar'
          end
        end

        namespace :top do
          get 'artists'
          get 'tracks'
          get 'tags'
        end
      end

      # VK

      namespace :vk do
        namespace :albums, as: :album do
          scope ':album_id' do
            get '', action: :info
          end
        end

        namespace :tracks, as: :track do
          scope ':track_id' do
            get '', action: :info
          end
        end

        namespace :search do
          get 'tracks'
          get 'albums'
        end
      end

      # Bandcamp

      namespace :bandcamp do
        namespace :search do
          get 'artists'
          get 'albums'
          get 'tracks'
        end

        namespace :id do
          scope ':artist' do
            get '', action: :artist

            scope :albums do
              scope ':album' do
                get '', action: :album
              end
            end

            scope :tracks do
              scope ':track' do
                get '', action: :track
              end
            end
          end
        end

        namespace :artists, as: :artist do
          scope ':artist_id' do
            get 'albums'

            namespace :albums, as: :album do
              scope ':album_id' do
                get '', action: :info
                get 'description'
                get 'tags'
              end
            end

            namespace :tracks, as: :track do
              scope ':track_id' do
                get '', action: :info
              end
            end
          end
        end

        namespace :labels, as: :label do
          scope ':label_id' do
            get 'artists'
            get 'albums'
          end
        end
      end

      # Discogs

      namespace :discogs do
        namespace :search do
          get 'artists'
          get 'labels'
          get 'groups'
          get 'albums'
        end

        namespace :artists, as: :artist do
          scope ':artist_id' do
            get 'albums'
          end
        end

        namespace :labels, as: :label do
          scope ':label_id' do
            get '', action: :info
            get 'albums'
          end
        end

        namespace :groups, as: :group do
          scope ':group_id' do
            get '', action: :info
            get 'description'
            get 'tags'
            get 'albums'
          end
        end

        namespace :albums, as: :album do
          scope ':album_id' do
            get '', action: :info
            get 'description'
            get 'tags'
          end
        end
      end

      # Spotify

      namespace :spotify do
        namespace :search do
          get 'artists'
          get 'albums'
          get 'tracks'
        end

        namespace :artists, as: :artist do
          scope ':artist_id' do
            get 'albums'
          end
        end

        namespace :albums, as: :album do
          scope ':album_id' do
            get '', action: :info
          end
        end

        namespace :tracks, as: :track do
          scope ':track_id' do
            get '', action: :info
          end
        end
      end

      # SoundCloud

      namespace :soundcloud do
        namespace :search do
          get 'albums'
          get 'tracks'
        end

        namespace :albums, as: :album do
          scope ':album_id' do
            get '', action: :info
            get 'description'
            get 'tags'
          end
        end

        namespace :tracks, as: :track do
          scope ':track_id' do
            get '', action: :info
          end
        end
      end

      # Deezer

      namespace :deezer do
        namespace :search do
          get 'artists'
          get 'albums'
          get 'tracks'
        end

        namespace :artists, as: :artist do
          scope ':artist_id' do
            get 'albums'
          end
        end

        namespace :albums, as: :album do
          scope ':album_id' do
            get '', action: :info
            get 'tags'
          end
        end

        namespace :tracks, as: :track do
          scope ':track_id' do
            get '', action: :info
          end
        end
      end

      # Yandex Music

      namespace :yandex do
        namespace :music do
          namespace :search do
            get 'artists'
            get 'albums'
            get 'tracks'
          end

          namespace :artists, as: :artist do
            scope ':artist_id' do
              get 'albums'
            end
          end

          namespace :albums, as: :album do
            scope ':album_id' do
              get '', action: :info
              get 'tags'
            end
          end

          namespace :tracks, as: :track do
            scope ':track_id' do
              get '', action: :info
            end
          end
        end
      end

      # YouTube

      namespace :youtube do
        namespace :search do
          get 'videos'
        end
      end

      # Odnoklassniki

      namespace :odnoklassniki do
        namespace :search do
          get 'artists'
          get 'albums'
          get 'tracks'
        end

        namespace :artists, as: :artist do
          scope ':artist_id' do
            get 'albums'
          end
        end

        namespace :albums, as: :album do
          scope ':album_id' do
            get '', action: :info
            get 'tags'
          end
        end

        namespace :tracks, as: :track do
          scope ':track_id' do
            get '', action: :info
          end
        end
      end

      # Genius

      namespace :genius do
        namespace :search do
          get 'tracks'
        end

        namespace :tracks, as: :track do
          scope ':path' do
            get '', action: :info
            get 'lyrics'
          end
        end
      end
    end
  end

  match '*path', :to => 'application#not_found', via: :all
end
