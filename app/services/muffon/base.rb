module Muffon
  class Base
    def initialize(args = {})
      @args = OpenStruct.new(args)
    end

    class << self
      def call(args = {})
        new(args).call
      rescue *Muffon::Errors.list => e
        Muffon::Errors.handle(e.class)
      end
    end

    private

    def secrets
      Rails.application.credentials
    end

    def not_all_args?
      primary_args.any?(&:blank?)
    end

    def handlers
      Muffon::Errors.handlers
    end

    def global
      @global ||= Redis.new
    end

    def track_id(artist_name, title)
      ::Track.with_artist_id_title(
        artist_id(artist_name), title
      ).id
    end

    def artist_id(artist_name)
      ::Artist.with_name(artist_name).id
    end

    def album_id(artist_name, title, album_type = 'album')
      ::Album.with_artist_id_title_type(
        artist_id(artist_name), title, album_type
      ).id
    end

    def time_formatted(time)
      Time.zone.parse(time)&.strftime('%d %b %Y').to_s
    rescue ArgumentError
      time
    end

    def description_truncated
      description.truncate_words(75)
    end

    def default_image_data(model)
      LastFM::Utils::Image.call(model: model)
    end
  end
end
