module Muffon
  module Processor
    module Profile
      module Post
        class Base < Muffon::Profile::Base
          private

          def primary_args
            [
              @args[:profile_id],
              @args[:token]
            ]
          end

          def content_arg
            @args[:content].presence ||
              @args[:tracks].presence ||
              @args[:images].presence
          end

          def data
            return forbidden if wrong_profile?

            process_post
          end

          def post
            @post ||=
              profile.profile_posts.find_by(
                id: @args[:post_id]
              )
          end

          def post_params
            {
              content: @args[:content],
              track_ids: track_ids
            }
          end

          def track_ids
            tracks.pluck(:id)
          end

          def tracks
            @args[:tracks].map do |t|
              process_track(t)
            end
          end

          def process_track(track)
            Muffon::Processor::Profile::Post::Creator::Track.call(
              track:
            )
          end

          def process_images
            post.process_images(
              @args[:images]
            )
          end
        end
      end
    end
  end
end
