class Profile < ApplicationRecord
  ORDERS = %w[
    created_desc created_asc
    library_artists_count_desc
    library_artists_count_asc
    library_albums_count_desc
    library_albums_count_asc
    library_tracks_count_desc
    library_tracks_count_asc
    followers_count_desc
    followers_count_asc
  ].freeze
  EVENT_CALLBACKS = %w[
    created updated
  ].freeze
  EVENT_ATTRIBUTES = %w[
    email password nickname gender
    birthdate country city private
  ].freeze

  include ProfileValidator
  include ProfileDecorator
  include Eventable

  before_create :set_token

  has_secure_password

  has_one_attached :image

  has_many :library_artists, dependent: :destroy
  has_many :library_albums, dependent: :destroy
  has_many :library_tracks, dependent: :destroy

  has_many :recommendations,
           class_name: '::Recommendation',
           dependent: :destroy

  has_many :playlists, dependent: :destroy

  has_many :favorite_artists, dependent: :destroy
  has_many :favorite_albums, dependent: :destroy
  has_many :favorite_tracks, dependent: :destroy
  has_many :favorite_videos, dependent: :destroy

  has_many :bookmark_artists, dependent: :destroy
  has_many :bookmark_albums, dependent: :destroy
  has_many :bookmark_tracks, dependent: :destroy
  has_many :bookmark_videos, dependent: :destroy
  has_many :bookmark_video_channels, dependent: :destroy
  has_many :bookmark_video_playlists, dependent: :destroy

  has_many :listened_artists, dependent: :destroy
  has_many :listened_albums, dependent: :destroy
  has_many :listened_tracks, dependent: :destroy

  has_many :watched_videos, dependent: :destroy

  has_many :own_posts,
           class_name: 'Post',
           dependent: nil

  has_many :posts,
           foreign_key: 'other_profile_id',
           inverse_of: :other_profile,
           dependent: :destroy

  has_many :active_relationships,
           class_name: 'Relationship',
           inverse_of: :profile,
           dependent: :destroy

  has_many :following_profiles,
           through: :active_relationships,
           source: :other_profile

  has_many :passive_relationships,
           foreign_key: 'other_profile_id',
           class_name: 'Relationship',
           inverse_of: :other_profile,
           dependent: :destroy

  has_many :follower_profiles,
           through: :passive_relationships,
           source: :profile

  has_many :own_communities,
           class_name: 'Community',
           dependent: nil

  has_many :memberships, dependent: :destroy

  has_many :communities, through: :memberships

  has_many :active_conversations,
           class_name: 'Conversation',
           dependent: nil

  has_many :passive_conversations,
           class_name: 'Conversation',
           foreign_key: 'other_profile_id',
           inverse_of: :other_profile,
           dependent: nil

  has_many :active_events,
           class_name: 'Event',
           dependent: :destroy

  has_many :passive_events,
           class_name: 'Event',
           foreign_key: 'other_profile_id',
           inverse_of: :other_profile,
           dependent: nil

  has_many :playing_events, dependent: :destroy
  has_many :browser_events, dependent: :destroy

  enum gender: {
    male: 0,
    female: 1,
    other: 2
  }

  enum role: {
    profile: 0,
    creator: 1
  }
end
