module Helpers
  module Spotify
    module Artist
      class << self
        def albums_data
          {:artist=>{:albums=>[{:image=>{:extrasmall=>"https://i.scdn.co/image/ab67616d000048514f97d4bf55d152cff4e52d28", :large=>"https://i.scdn.co/image/ab67616d0000b2734f97d4bf55d152cff4e52d28", :medium=>"https://i.scdn.co/image/ab67616d00001e024f97d4bf55d152cff4e52d28", :original=>"https://i.scdn.co/image/ab67616d0000b2734f97d4bf55d152cff4e52d28", :small=>"https://i.scdn.co/image/ab67616d000048514f97d4bf55d152cff4e52d28"}, :release_date=>"21 Nov 2011", :source_id=>"spotify", :spotify_id=>"2mOtRzRf4igdjKs1UzUWFr", :title=>"50 Words for Snow (2018 Remaster)"}, {:image=>{:extrasmall=>"https://i.scdn.co/image/ab67616d00004851cee9bfe3dceb9b95d344b1f5", :large=>"https://i.scdn.co/image/ab67616d0000b273cee9bfe3dceb9b95d344b1f5", :medium=>"https://i.scdn.co/image/ab67616d00001e02cee9bfe3dceb9b95d344b1f5", :original=>"https://i.scdn.co/image/ab67616d0000b273cee9bfe3dceb9b95d344b1f5", :small=>"https://i.scdn.co/image/ab67616d00004851cee9bfe3dceb9b95d344b1f5"}, :release_date=>"16 May 2011", :source_id=>"spotify", :spotify_id=>"5jYdgzyT71V5j4MQm327gF", :title=>"Director's Cut"}, {:image=>{:extrasmall=>"https://i.scdn.co/image/ab67616d0000485197e2adfc615470adb686ad35", :large=>"https://i.scdn.co/image/ab67616d0000b27397e2adfc615470adb686ad35", :medium=>"https://i.scdn.co/image/ab67616d00001e0297e2adfc615470adb686ad35", :original=>"https://i.scdn.co/image/ab67616d0000b27397e2adfc615470adb686ad35", :small=>"https://i.scdn.co/image/ab67616d0000485197e2adfc615470adb686ad35"}, :release_date=>"16 May 2011", :source_id=>"spotify", :spotify_id=>"2pQr45goebKERx0ntdhsIA", :title=>"Director's Cut (2018 Remaster)"}, {:image=>{:extrasmall=>"https://i.scdn.co/image/ab67616d00004851639b5d6334f08ce04de0fc03", :large=>"https://i.scdn.co/image/ab67616d0000b273639b5d6334f08ce04de0fc03", :medium=>"https://i.scdn.co/image/ab67616d00001e02639b5d6334f08ce04de0fc03", :original=>"https://i.scdn.co/image/ab67616d0000b273639b5d6334f08ce04de0fc03", :small=>"https://i.scdn.co/image/ab67616d00004851639b5d6334f08ce04de0fc03"}, :release_date=>"07 Nov 2005", :source_id=>"spotify", :spotify_id=>"0xo3ZL0B9982pr08stcNlt", :title=>"Aerial (2018 Remaster)"}, {:image=>{:extrasmall=>"https://i.scdn.co/image/ab67616d00004851e6d5420e86091c2ffa2c3484", :large=>"https://i.scdn.co/image/ab67616d0000b273e6d5420e86091c2ffa2c3484", :medium=>"https://i.scdn.co/image/ab67616d00001e02e6d5420e86091c2ffa2c3484", :original=>"https://i.scdn.co/image/ab67616d0000b273e6d5420e86091c2ffa2c3484", :small=>"https://i.scdn.co/image/ab67616d00004851e6d5420e86091c2ffa2c3484"}, :release_date=>"07 Nov 2005", :source_id=>"spotify", :spotify_id=>"5hAtR86rztwrKh83zUokGu", :title=>"Aerial"}], :name=>"Kate Bush", :page=>2, :total_pages=>6}}
        end

        def no_albums_data
          {:artist=>{:albums=>[], :name=>"Kate Bush", :page=>1}}
        end
      end
    end
  end
end
