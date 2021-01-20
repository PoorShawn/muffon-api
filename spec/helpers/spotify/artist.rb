module Helpers
  module Spotify
    module Artist
      class << self
        def albums_data
          {:artist=>{:albums=>[{:images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d00004851cee9bfe3dceb9b95d344b1f5", :large=>"https://i.scdn.co/image/ab67616d0000b273cee9bfe3dceb9b95d344b1f5", :medium=>"https://i.scdn.co/image/ab67616d00001e02cee9bfe3dceb9b95d344b1f5", :original=>"https://i.scdn.co/image/ab67616d0000b273cee9bfe3dceb9b95d344b1f5", :small=>"https://i.scdn.co/image/ab67616d00004851cee9bfe3dceb9b95d344b1f5"}, :spotify_id=>"5jYdgzyT71V5j4MQm327gF", :title=>"Director's Cut"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d0000485197e2adfc615470adb686ad35", :large=>"https://i.scdn.co/image/ab67616d0000b27397e2adfc615470adb686ad35", :medium=>"https://i.scdn.co/image/ab67616d00001e0297e2adfc615470adb686ad35", :original=>"https://i.scdn.co/image/ab67616d0000b27397e2adfc615470adb686ad35", :small=>"https://i.scdn.co/image/ab67616d0000485197e2adfc615470adb686ad35"}, :spotify_id=>"2pQr45goebKERx0ntdhsIA", :title=>"Director's Cut (2018 Remaster)"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d00004851639b5d6334f08ce04de0fc03", :large=>"https://i.scdn.co/image/ab67616d0000b273639b5d6334f08ce04de0fc03", :medium=>"https://i.scdn.co/image/ab67616d00001e02639b5d6334f08ce04de0fc03", :original=>"https://i.scdn.co/image/ab67616d0000b273639b5d6334f08ce04de0fc03", :small=>"https://i.scdn.co/image/ab67616d00004851639b5d6334f08ce04de0fc03"}, :spotify_id=>"0xo3ZL0B9982pr08stcNlt", :title=>"Aerial (2018 Remaster)"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d00004851e6d5420e86091c2ffa2c3484", :large=>"https://i.scdn.co/image/ab67616d0000b273e6d5420e86091c2ffa2c3484", :medium=>"https://i.scdn.co/image/ab67616d00001e02e6d5420e86091c2ffa2c3484", :original=>"https://i.scdn.co/image/ab67616d0000b273e6d5420e86091c2ffa2c3484", :small=>"https://i.scdn.co/image/ab67616d00004851e6d5420e86091c2ffa2c3484"}, :spotify_id=>"5hAtR86rztwrKh83zUokGu", :title=>"Aerial"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d000048515a882f1004cfd0be580bcb21", :large=>"https://i.scdn.co/image/ab67616d0000b2735a882f1004cfd0be580bcb21", :medium=>"https://i.scdn.co/image/ab67616d00001e025a882f1004cfd0be580bcb21", :original=>"https://i.scdn.co/image/ab67616d0000b2735a882f1004cfd0be580bcb21", :small=>"https://i.scdn.co/image/ab67616d000048515a882f1004cfd0be580bcb21"}, :spotify_id=>"4sIzJ870jz52cH2rRraqG2", :title=>"Aerial"}], :page=>2, :total_pages=>28}}
        end

        def info_data
          {:artist=>{:images=>{:extrasmall=>"https://i.scdn.co/image/08ec46ff35f3c5b2085ac0d3d3f8ba0f77086a8f", :large=>"https://i.scdn.co/image/3b2db6840f31b367518f97b1a5d6bea653ea56ae", :medium=>"https://i.scdn.co/image/b8e74146831af09bd16bf5b7c77cbe92e86355db", :original=>"https://i.scdn.co/image/3b2db6840f31b367518f97b1a5d6bea653ea56ae", :small=>"https://i.scdn.co/image/08ec46ff35f3c5b2085ac0d3d3f8ba0f77086a8f"}, :name=>"Kate Bush", :tags=>["art pop", "art rock", "baroque pop", "chamber psych", "dance pop", "dance rock", "new wave pop", "permanent wave", "piano rock", "singer-songwriter"]}}
        end

        def similar_data
          {:artist=>{:similar=>[{:images=>{:extrasmall=>"https://i.scdn.co/image/b6e2d11c1d7fbd203c1266f12995a2ff415508b2", :large=>"https://i.scdn.co/image/f935d04766987d00872ab725bd06359e6b2d2b0a", :medium=>"https://i.scdn.co/image/23e9ae06d3f2b35c701b474750ad5d52a549a22f", :original=>"https://i.scdn.co/image/f935d04766987d00872ab725bd06359e6b2d2b0a", :small=>"https://i.scdn.co/image/b6e2d11c1d7fbd203c1266f12995a2ff415508b2"}, :name=>"Tori Amos", :spotify_id=>"1KsASRNugxU85T0u6zSg32"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/d640d4ca369f9a96321aa9bc80fb6d5232ecdee7", :large=>"https://i.scdn.co/image/ea4aa4284bb75aef504c065aefd6e79a6079f99f", :medium=>"https://i.scdn.co/image/95ca3f18fd46e001c2fce1582e2d43078852c09c", :original=>"https://i.scdn.co/image/01302e48d0723ef0bb11af123826d7016585995d", :small=>"https://i.scdn.co/image/d640d4ca369f9a96321aa9bc80fb6d5232ecdee7"}, :name=>"Sinéad O'Connor", :spotify_id=>"4sD9znwiVFx9cgRPZ42aQ1"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/fb6513b0997b831c6a46c383ea6273763f833b6a", :large=>"https://i.scdn.co/image/423aeaee7946f878af2fa7416cd560e77cfef734", :medium=>"https://i.scdn.co/image/408060feab7903dd218a29f7ce541745631754e2", :original=>"https://i.scdn.co/image/423aeaee7946f878af2fa7416cd560e77cfef734", :small=>"https://i.scdn.co/image/fb6513b0997b831c6a46c383ea6273763f833b6a"}, :name=>"Suzanne Vega", :spotify_id=>"3X0tJzVYoWlfjLYI0Ridsw"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/f38ddcb29d7e1edb3c02ae5d05e862f2cf9c57d1", :large=>"https://i.scdn.co/image/d88ca473ad66439c371e39a296d04d608f0432b9", :medium=>"https://i.scdn.co/image/d0e94af9866a00045e9e5c69ad3039479317d864", :original=>"https://i.scdn.co/image/d88ca473ad66439c371e39a296d04d608f0432b9", :small=>"https://i.scdn.co/image/f38ddcb29d7e1edb3c02ae5d05e862f2cf9c57d1"}, :name=>"PJ Harvey", :spotify_id=>"12VaqyEhgwDRuFfEqbnrpz"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/2a948ecfebbc5c830eede45a8c6b59376e7d2f47", :large=>"https://i.scdn.co/image/14097151a48a842126f6979d4398acfb1cc2cd04", :medium=>"https://i.scdn.co/image/cc403dcd539fc0c6432df9bb63542dc79e7c5633", :original=>"https://i.scdn.co/image/1224d3af9be017b1436b59980be7ae167573c03c", :small=>"https://i.scdn.co/image/2a948ecfebbc5c830eede45a8c6b59376e7d2f47"}, :name=>"The Sugarcubes", :spotify_id=>"1G0Xwj8mza6b03iYkVdzDP"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/5f556ba42cb9d6207daba12e4de1e4a7d56bd3e8", :large=>"https://i.scdn.co/image/94835542945ff5c3cccfd64be804c456f18184f9", :medium=>"https://i.scdn.co/image/8f103a811a9dabf23bc49dd81528d25b373b5a84", :original=>"https://i.scdn.co/image/94835542945ff5c3cccfd64be804c456f18184f9", :small=>"https://i.scdn.co/image/5f556ba42cb9d6207daba12e4de1e4a7d56bd3e8"}, :name=>"Bat For Lashes", :spotify_id=>"6l77PmL5iuEEcYjGl8K6s7"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/8d365f7b2f3fe695cdeeda646f08282b5616fc75", :large=>"https://i.scdn.co/image/a0688472b4ce3ad08fa902a5c59fb1aae540ef09", :medium=>"https://i.scdn.co/image/24fdf077f2882ad603747f38f3b247e02bcadb7b", :original=>"https://i.scdn.co/image/a0688472b4ce3ad08fa902a5c59fb1aae540ef09", :small=>"https://i.scdn.co/image/8d365f7b2f3fe695cdeeda646f08282b5616fc75"}, :name=>"This Mortal Coil", :spotify_id=>"5OK8j1JnhoBlivN32G7yOO"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/74fa24a25326188ab23618d9a8acaaa34a61d894", :large=>"https://i.scdn.co/image/44012cfc4fedcbe92ac5e14178061fd3a872417f", :medium=>"https://i.scdn.co/image/aa17c9e1d458bd250232535b54796a037572295d", :original=>"https://i.scdn.co/image/20e52d0b168541016f901d9ec6d4f2a0e41f193b", :small=>"https://i.scdn.co/image/74fa24a25326188ab23618d9a8acaaa34a61d894"}, :name=>"Patti Smith", :spotify_id=>"0vYkHhJ48Bs3jWcvZXvOrP"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/6a1e4ded8fba3f4b7e64c0563e4b53c1f06be0a3", :large=>"https://i.scdn.co/image/5001ca3c3cd95734aac7320d2199b9b515595375", :medium=>"https://i.scdn.co/image/83728c1a6fdcbe259f21ee545c2feaea499e752c", :original=>"https://i.scdn.co/image/5001ca3c3cd95734aac7320d2199b9b515595375", :small=>"https://i.scdn.co/image/6a1e4ded8fba3f4b7e64c0563e4b53c1f06be0a3"}, :name=>"Björk", :spotify_id=>"7w29UYBi0qsHi5RTcv3lmA"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/29d58c0bd927849a2e80222b1773fd53cbbcee6a", :large=>"https://i.scdn.co/image/baf6d631534e8e6788471280f3447f0b7fe0ee54", :medium=>"https://i.scdn.co/image/ef206d8789ecb3a22c6617205a614fa485584158", :original=>"https://i.scdn.co/image/baf6d631534e8e6788471280f3447f0b7fe0ee54", :small=>"https://i.scdn.co/image/29d58c0bd927849a2e80222b1773fd53cbbcee6a"}, :name=>"Grace Jones", :spotify_id=>"2f9ZiYA2ic1r1voObUimdd"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/18c8164e0c262f32020e91e4f94bdc663ba3a55f", :large=>"https://i.scdn.co/image/00a2066e2104137e034dd55f05ee8a8887d98728", :medium=>"https://i.scdn.co/image/cc24162856d8c3bf092834f2d142a488f4bbf625", :original=>"https://i.scdn.co/image/00a2066e2104137e034dd55f05ee8a8887d98728", :small=>"https://i.scdn.co/image/18c8164e0c262f32020e91e4f94bdc663ba3a55f"}, :name=>"Roxy Music", :spotify_id=>"3fhOTtm0LBJ3Ojn4hIljLo"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/9e0f2c89c4737345f6e45e94c4feb6ce9b54f113", :large=>"https://i.scdn.co/image/0f9c93730d22f71b880f3ed0ecc2cdf10b1552a5", :medium=>"https://i.scdn.co/image/28c77ec0fec06ee8c798335d529633a0d4338534", :original=>"https://i.scdn.co/image/1d64b14523c4a0a3a09879fd133b539b390256f1", :small=>"https://i.scdn.co/image/9e0f2c89c4737345f6e45e94c4feb6ce9b54f113"}, :name=>"Talk Talk", :spotify_id=>"7Fo8TAyGJr4VmhE68QamMf"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/ab67726900008f741f272ff8ca78ef4c70e49f70", :large=>"https://i.scdn.co/image/ab6772690000dd221f272ff8ca78ef4c70e49f70", :medium=>"https://i.scdn.co/image/ab6772690000bac31f272ff8ca78ef4c70e49f70", :original=>"https://i.scdn.co/image/ab6772690000c46c1f272ff8ca78ef4c70e49f70", :small=>"https://i.scdn.co/image/ab67726900008f741f272ff8ca78ef4c70e49f70"}, :name=>"Prefab Sprout", :spotify_id=>"4w3QqrcmBv8dasemwBXmxf"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/267eaf921c4368e2bc11028407cb21adcfdb58d0", :large=>"https://i.scdn.co/image/40175bb780288f48b658668443d3868623739899", :medium=>"https://i.scdn.co/image/ba1b635bd1bd490d0f32285bb01243840679e606", :original=>"https://i.scdn.co/image/677676052b80931c35666be501d1f0d5c97397c9", :small=>"https://i.scdn.co/image/267eaf921c4368e2bc11028407cb21adcfdb58d0"}, :name=>"Nico", :spotify_id=>"0IwlY33zbBXN7zlS9DP2Cj"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/1eb8d50c03f08e3464c55f9a18f2ed9b9fdd19ca", :large=>"https://i.scdn.co/image/20820ca3783e7eef24640c1752549c3e564c8aed", :medium=>"https://i.scdn.co/image/310167cf89d6588fddd0cc343a62ea1c1d67deff", :original=>"https://i.scdn.co/image/20820ca3783e7eef24640c1752549c3e564c8aed", :small=>"https://i.scdn.co/image/1eb8d50c03f08e3464c55f9a18f2ed9b9fdd19ca"}, :name=>"Japan", :spotify_id=>"7vPXrGlSGukcwpaPxUfKKR"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/f6577665885c6df7201f2c15a30565fdd4dc6528", :large=>"https://i.scdn.co/image/12fa279a112d425cd5b9980c56452630bee1dc8e", :medium=>"https://i.scdn.co/image/09eb1ae023ae2f52740df87a78ed990a0160a344", :original=>"https://i.scdn.co/image/c3d256b560f88164c5346543311b0a353c71cfd7", :small=>"https://i.scdn.co/image/f6577665885c6df7201f2c15a30565fdd4dc6528"}, :name=>"Cocteau Twins", :spotify_id=>"5Wabl1lPdNOeIn0SQ5A1mp"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/65de43a771caba0d9157cbf1c16a6810b9cb385b", :large=>"https://i.scdn.co/image/f9583d2a331faaba5174ef195f1d46d1c9639af9", :medium=>"https://i.scdn.co/image/6565aa6133896a4c77f1b2b9bc9ef7caf55558c0", :original=>"https://i.scdn.co/image/baf868deb6e3944db2717194bbdd9016e48f3de2", :small=>"https://i.scdn.co/image/65de43a771caba0d9157cbf1c16a6810b9cb385b"}, :name=>"Siouxsie and the Banshees", :spotify_id=>"1n65zfwYIj5kKEtNgxUlWb"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/bf18ad78ea67ee490a255de22f91d2b4a550a456", :large=>"https://i.scdn.co/image/0e8127b1cf85ed41361897d02aede5298749d3f8", :medium=>"https://i.scdn.co/image/4f529b5f793fe9e9e8f08d428b94bfa834cb6db4", :original=>"https://i.scdn.co/image/0e8127b1cf85ed41361897d02aede5298749d3f8", :small=>"https://i.scdn.co/image/bf18ad78ea67ee490a255de22f91d2b4a550a456"}, :name=>"Fiona Apple", :spotify_id=>"3g2kUQ6tHLLbmkV7T4GPtL"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/6e74df1d252a2e4252d1b1e313a0d117928c144b", :large=>"https://i.scdn.co/image/4224df3fe879a0527199e43e57911d9e9e336c87", :medium=>"https://i.scdn.co/image/2292a10c6ed5ee31e0e1ed5422407c1bf3c12d33", :original=>"https://i.scdn.co/image/4224df3fe879a0527199e43e57911d9e9e336c87", :small=>"https://i.scdn.co/image/6e74df1d252a2e4252d1b1e313a0d117928c144b"}, :name=>"Goldfrapp", :spotify_id=>"5BKsn7SCN2XmbF7apdCpRS"}, {:images=>{:extrasmall=>"https://i.scdn.co/image/345c6eab4c3ef12039a5f9f43f15b12cb7acf915", :large=>"https://i.scdn.co/image/e3cbeef865203d7a3f53ad5e2ac8adb4695aeae0", :medium=>"https://i.scdn.co/image/46d23a11f104286e3b5a053f86692b886dd2a70b", :original=>"https://i.scdn.co/image/e3cbeef865203d7a3f53ad5e2ac8adb4695aeae0", :small=>"https://i.scdn.co/image/345c6eab4c3ef12039a5f9f43f15b12cb7acf915"}, :name=>"Marianne Faithfull", :spotify_id=>"7mlge4peaoNgzTsY6M32RB"}]}}
        end

        def top_tracks_data
          {:artist=>{:tracks=>[{:album=>{:artist=>"Kate Bush", :images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d0000485130da683c0c018535adbaf0e5", :large=>"https://i.scdn.co/image/ab67616d0000b27330da683c0c018535adbaf0e5", :medium=>"https://i.scdn.co/image/ab67616d00001e0230da683c0c018535adbaf0e5", :original=>"https://i.scdn.co/image/ab67616d0000b27330da683c0c018535adbaf0e5", :small=>"https://i.scdn.co/image/ab67616d0000485130da683c0c018535adbaf0e5"}, :spotify_id=>"5NKTuBLCYhN0OwqFiGdXd1", :title=>"The Kick Inside"}, :audio=>{:id=>"5YSI1311X8t31PBjkBG4CZ", :present=>true, :source=>"spotify"}, :length=>270, :title=>"Wuthering Heights"}, {:album=>{:artist=>"Kate Bush", :images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d000048515c390e413e27798edd4d18b4", :large=>"https://i.scdn.co/image/ab67616d0000b2735c390e413e27798edd4d18b4", :medium=>"https://i.scdn.co/image/ab67616d00001e025c390e413e27798edd4d18b4", :original=>"https://i.scdn.co/image/ab67616d0000b2735c390e413e27798edd4d18b4", :small=>"https://i.scdn.co/image/ab67616d000048515c390e413e27798edd4d18b4"}, :spotify_id=>"3OYnManu1Nlxnw9OMng7BH", :title=>"Hounds of Love (2018 Remaster)"}, :audio=>{:id=>"29d0nY7TzCoi22XBqDQkiP", :present=>true, :source=>"spotify"}, :length=>301, :title=>"Running Up That Hill (A Deal With God) - 2018 Remaster"}, {:album=>{:artist=>"Kate Bush", :images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d00004851ec89a9b2a07d1bfef45148b9", :large=>"https://i.scdn.co/image/ab67616d0000b273ec89a9b2a07d1bfef45148b9", :medium=>"https://i.scdn.co/image/ab67616d00001e02ec89a9b2a07d1bfef45148b9", :original=>"https://i.scdn.co/image/ab67616d0000b273ec89a9b2a07d1bfef45148b9", :small=>"https://i.scdn.co/image/ab67616d00004851ec89a9b2a07d1bfef45148b9"}, :spotify_id=>"0KBFDO8qcY0zhybIESEQUt", :title=>"Never for Ever (2018 Remaster)"}, :audio=>{:id=>"6VpNGCU2ig4NQmsLfALdJU", :present=>true, :source=>"spotify"}, :length=>200, :title=>"Babooshka - 2018 Remaster"}, {:album=>{:artist=>"Kate Bush", :images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d000048515c390e413e27798edd4d18b4", :large=>"https://i.scdn.co/image/ab67616d0000b2735c390e413e27798edd4d18b4", :medium=>"https://i.scdn.co/image/ab67616d00001e025c390e413e27798edd4d18b4", :original=>"https://i.scdn.co/image/ab67616d0000b2735c390e413e27798edd4d18b4", :small=>"https://i.scdn.co/image/ab67616d000048515c390e413e27798edd4d18b4"}, :spotify_id=>"3OYnManu1Nlxnw9OMng7BH", :title=>"Hounds of Love (2018 Remaster)"}, :audio=>{:id=>"0cuMpt0w9ahbhJl0R2fbkY", :present=>true, :source=>"spotify"}, :length=>310, :title=>"Cloudbusting - 2018 Remaster"}, {:album=>{:artist=>"Kate Bush", :images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d000048511199dfdd8703f3afa4328561", :large=>"https://i.scdn.co/image/ab67616d0000b2731199dfdd8703f3afa4328561", :medium=>"https://i.scdn.co/image/ab67616d00001e021199dfdd8703f3afa4328561", :original=>"https://i.scdn.co/image/ab67616d0000b2731199dfdd8703f3afa4328561", :small=>"https://i.scdn.co/image/ab67616d000048511199dfdd8703f3afa4328561"}, :spotify_id=>"4wkCDfNmFIkL8kE4tGmvYc", :title=>"The Sensual World"}, :audio=>{:id=>"6FN08oB3MT2BxYIJoR1CZ5", :present=>true, :source=>"spotify"}, :length=>214, :title=>"This Woman's Work"}, {:album=>{:artist=>"Kate Bush", :images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d0000485130da683c0c018535adbaf0e5", :large=>"https://i.scdn.co/image/ab67616d0000b27330da683c0c018535adbaf0e5", :medium=>"https://i.scdn.co/image/ab67616d00001e0230da683c0c018535adbaf0e5", :original=>"https://i.scdn.co/image/ab67616d0000b27330da683c0c018535adbaf0e5", :small=>"https://i.scdn.co/image/ab67616d0000485130da683c0c018535adbaf0e5"}, :spotify_id=>"5NKTuBLCYhN0OwqFiGdXd1", :title=>"The Kick Inside"}, :audio=>{:id=>"4xjVfArXNQRxAvsUpjmfMt", :present=>true, :source=>"spotify"}, :length=>159, :title=>"The Man with the Child in His Eyes"}, {:album=>{:artist=>"Kate Bush", :images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d000048515c390e413e27798edd4d18b4", :large=>"https://i.scdn.co/image/ab67616d0000b2735c390e413e27798edd4d18b4", :medium=>"https://i.scdn.co/image/ab67616d00001e025c390e413e27798edd4d18b4", :original=>"https://i.scdn.co/image/ab67616d0000b2735c390e413e27798edd4d18b4", :small=>"https://i.scdn.co/image/ab67616d000048515c390e413e27798edd4d18b4"}, :spotify_id=>"3OYnManu1Nlxnw9OMng7BH", :title=>"Hounds of Love (2018 Remaster)"}, :audio=>{:id=>"7Gmds7ZyvhKdoU0Ho4GIxK", :present=>true, :source=>"spotify"}, :length=>183, :title=>"Hounds Of Love - 2018 Remaster"}, {:album=>{:artist=>"Kate Bush", :images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d00004851ec89a9b2a07d1bfef45148b9", :large=>"https://i.scdn.co/image/ab67616d0000b273ec89a9b2a07d1bfef45148b9", :medium=>"https://i.scdn.co/image/ab67616d00001e02ec89a9b2a07d1bfef45148b9", :original=>"https://i.scdn.co/image/ab67616d0000b273ec89a9b2a07d1bfef45148b9", :small=>"https://i.scdn.co/image/ab67616d00004851ec89a9b2a07d1bfef45148b9"}, :spotify_id=>"0KBFDO8qcY0zhybIESEQUt", :title=>"Never for Ever (2018 Remaster)"}, :audio=>{:id=>"135ArLV1euyyeegU9D8HVR", :present=>true, :source=>"spotify"}, :length=>180, :title=>"Army Dreamers - 2018 Remaster"}, {:album=>{:artist=>"Kate Bush", :images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d000048515c390e413e27798edd4d18b4", :large=>"https://i.scdn.co/image/ab67616d0000b2735c390e413e27798edd4d18b4", :medium=>"https://i.scdn.co/image/ab67616d00001e025c390e413e27798edd4d18b4", :original=>"https://i.scdn.co/image/ab67616d0000b2735c390e413e27798edd4d18b4", :small=>"https://i.scdn.co/image/ab67616d000048515c390e413e27798edd4d18b4"}, :spotify_id=>"3OYnManu1Nlxnw9OMng7BH", :title=>"Hounds of Love (2018 Remaster)"}, :audio=>{:id=>"0NMLAW3ma3naFx3DQRrnNS", :present=>true, :source=>"spotify"}, :length=>166, :title=>"And Dream Of Sheep - 2018 Remaster"}, {:album=>{:artist=>"Kate Bush", :images=>{:extrasmall=>"https://i.scdn.co/image/ab67616d00004851fd5b33fad57b23e897f155ed", :large=>"https://i.scdn.co/image/ab67616d0000b273fd5b33fad57b23e897f155ed", :medium=>"https://i.scdn.co/image/ab67616d00001e02fd5b33fad57b23e897f155ed", :original=>"https://i.scdn.co/image/ab67616d0000b273fd5b33fad57b23e897f155ed", :small=>"https://i.scdn.co/image/ab67616d00004851fd5b33fad57b23e897f155ed"}, :spotify_id=>"1gRJsaJ7ExC9Q9YdB9ZMC5", :title=>"The Dreaming"}, :audio=>{:id=>"1VsQhQbF4SwVvbbFeQ5EOa", :present=>true, :source=>"spotify"}, :length=>236, :title=>"Suspended In Gaffa"}]}}
        end
      end
    end
  end
end
