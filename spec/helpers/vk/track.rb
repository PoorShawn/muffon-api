module Helpers
  module VK
    module Track
      class << self
        def info_data
          {:track=>{:album=>{:title=>"Live from Brooklyn Steel"}, :albums=>[{:source_id=>"vk", :title=>"Live from Brooklyn Steel", :vk_access_key=>"166cffd3d0327ec0cc", :vk_id=>5454320, :vk_owner_id=>-2000454320}], :artist=>{:name=>"Wild Nothing"}, :artists=>[{:name=>"Wild Nothing", :vk_id=>"4333005440018923962"}], :audio=>{:link=>"http://localhost:4001/temp/audio/vk/-2001472560_55472560.mp3", :present=>true, :source_id=>"vk"}, :duration=>"03:29", :duration_seconds=>209, :extra_title=>"Live from Brooklyn Steel", :image=>{:extrasmall=>"https://sun2.cosmostv-by-minsk.userapi.com/impf/sfBsk4gbfr3ZjE7L4uld9eywOFZ3G5TpNg4Ggg/kM7ge1SfVUQ.jpg?size=68x68&quality=96&sign=0e73ed2c223ff91b30747c33c8fea069&c_uniq_tag=ANkmqf7VdE2FdDriXt9p3G0Ch_NU_BPw8VMul3pFwRI&type=audio", :large=>"https://sun2.cosmostv-by-minsk.userapi.com/impf/sfBsk4gbfr3ZjE7L4uld9eywOFZ3G5TpNg4Ggg/kM7ge1SfVUQ.jpg?size=592x592&quality=96&sign=5f87612b75afda1b7d6b7acdc3b0107a&c_uniq_tag=bHFMdRXYDLYLNruzN9d9_d5jiuMY_BQu3Wt7rpp2zO0&type=audio", :medium=>"https://sun2.cosmostv-by-minsk.userapi.com/impf/sfBsk4gbfr3ZjE7L4uld9eywOFZ3G5TpNg4Ggg/kM7ge1SfVUQ.jpg?size=300x300&quality=96&sign=fd17594c84929d4a52996a4b5431c7a5&c_uniq_tag=ASZ0WepKlJpGU9co5t2ScQqoo-Vmb4i1VnOQ2JX-cn4&type=audio", :original=>"https://sun2.cosmostv-by-minsk.userapi.com/impf/sfBsk4gbfr3ZjE7L4uld9eywOFZ3G5TpNg4Ggg/kM7ge1SfVUQ.jpg?size=1184x1184&quality=96&sign=8c2a8c2dca6e21d7e0c54d10cb4caf23&c_uniq_tag=EMvOA0L5D4AxG9xyg0LIkKBP2FrpAyYalXay64YL5Uc&type=audio", :small=>"https://sun2.cosmostv-by-minsk.userapi.com/impf/sfBsk4gbfr3ZjE7L4uld9eywOFZ3G5TpNg4Ggg/kM7ge1SfVUQ.jpg?size=135x135&quality=96&sign=99ea5546e3a9b487b898085589a1ea94&c_uniq_tag=OCZE1BLK7aUPDiXlGmmuiGLDxtRKlThjKKvZ03E3r_c&type=audio"}, :player_id=>"1", :source_id=>"vk", :title=>"Chinatown", :vk_id=>"-2001472560_55472560", :with_more=>{}}}
        end

        def info_no_album_data
          {:track=>{:artist=>{:name=>"ナイトメア"}, :artists=>[{:name=>"ナイトメア"}], :audio=>{:link=>"http://localhost:4001/temp/audio/vk/-400921_90392497.mp3", :present=>true, :source_id=>"vk"}, :duration=>"04:59", :duration_seconds=>299, :player_id=>"1", :source_id=>"vk", :title=>"Alumina", :vk_id=>"-400921_90392497", :with_more=>{}}}
        end
      end
    end
  end
end
