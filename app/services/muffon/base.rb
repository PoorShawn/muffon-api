module Muffon
  class Base
    def initialize(args = {})
      @args = OpenStruct.new(args)
    end

    class << self
      def call(args = {})
        new(args).call
      rescue *Muffon::Utils::Errors.list => e
        Muffon::Utils::Errors.handle(e.class)
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
      Muffon::Utils::Errors.handlers
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

    def date_formatted(data, format = nil)
      Muffon::Utils::Date.format(data, format)
    end

    def description_truncated
      description.truncate_words(75)
    end

    def default_image_data(model)
      LastFM::Utils::Image.call(model: model)
    end

    def tags
      tags_list.map { |t| tag_item_data(t) }
    end

    def tag_item_data(tag)
      { name: tag_item_name(tag) }
    end

    def tag_item_name(tag)
      case tag.class.name
      when 'Hash'
        tag['name'] || tag['label']
      when 'String'
        tag
      when 'Nokogiri::XML::Element'
        tag.text
      end
    end

    def with_more_data
      {
        with_more: {
          description: with_more_description?,
          tags: with_more_tags?
        }.compact
      }
    end

    def with_more_description?
      defined?(description) &&
        description.size > description_truncated.size
    end

    def with_more_tags?
      defined?(tags_list) && tags_list.size > 5
    end
  end
end
