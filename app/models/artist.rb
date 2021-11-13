class Artist < ApplicationRecord
  after_create_commit :add_tags

  has_many :profile_artists, dependent: nil

  validates :name,
            presence: true,
            uniqueness: true

  class << self
    def with_name(name)
      where(
        'LOWER(name) = ?',
        name.strip.downcase
      ).first_or_create(
        name: name
      )
    end
  end

  def image_data
    return if image_url.blank?

    LastFM::Utils::Image.call(
      image: image_url, model: 'artist'
    )
  end

  private

  def add_tags
    Artist::TagsUpdaterWorker.perform_async(
      artist_id: id
    )
  end
end
