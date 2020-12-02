module Helpers
  module LastFM
    module Tag
      class << self
        def albums_data
          {:tag=>{:albums=>[{:artist=>"Lana Del Rey", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/0256f9c7068d0edb75a477c596cc9787.jpg", :listeners_count=>346017, :title=>"Honeymoon"}, {:artist=>"Lana Del Rey", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/76106f63a6085261f65c81a5d41a3292.jpg", :listeners_count=>212789, :title=>"Paradise"}, {:artist=>"志方あきこ", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/6df0a419239ec0247be760f6d0f7e522.jpg", :listeners_count=>4571, :title=>"Navigatoria"}, {:artist=>"Slowdive", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/1863c131c717666e030c94880e1cce53.jpg", :listeners_count=>476707, :title=>"Souvlaki"}, {:artist=>"My Bloody Valentine", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/64d919cd14624a56a4441e045246fab4.jpg", :listeners_count=>722355, :title=>"Loveless"}, {:artist=>"Cocteau Twins", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/a9e76f2e8c9b4528a24d50af9e8f26fb.jpg", :listeners_count=>249680, :title=>"Treasure"}, {:artist=>"志方あきこ", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/415f18b3061fc9d355684d303067a809.jpg", :listeners_count=>5338, :title=>"Raka"}, {:artist=>"Cocteau Twins", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/cb986ce168b3283409c2f68f7af577ec.jpg", :listeners_count=>125264, :title=>"Heaven or Las Vegas"}, {:artist=>"Beach House", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/4b01019d722348568283d18bdcb990af.jpg", :listeners_count=>777183, :title=>"Teen Dream"}, {:artist=>"Slowdive", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/17ebb43f28ab48318e2937bd8915f96c.jpg", :listeners_count=>174548, :title=>"Pygmalion"}, {:artist=>"Slowdive", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/6d2bde846a5933b29985d754166cee18.jpg", :listeners_count=>183437, :title=>"Just for a Day"}, {:artist=>"Mazzy Star", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/60615ead3d8383e70e84a526817de4bf.jpg", :listeners_count=>640728, :title=>"So Tonight That I Might See"}, {:artist=>"Beach House", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/90ff02d4495f4c50a1b7b2a64798d892.jpg", :listeners_count=>523253, :title=>"Bloom"}, {:artist=>"志方あきこ", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/0128d00bf9225afbbc99433245efe19b.jpg", :listeners_count=>228, :title=>"caTra"}, {:artist=>"Cocteau Twins", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/2a6683965f169985bdde9698dfc9cd05.jpg", :listeners_count=>96303, :title=>"Victorialand"}, {:artist=>"Grimes", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/94cfdb5f36a7f935b6837f5fe8840ed6.jpg", :listeners_count=>699349, :title=>"Visions"}, {:artist=>"My Bloody Valentine", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/ae3d658e6a77d40a24dba212f1d65916.jpg", :listeners_count=>284751, :title=>"Isn't Anything"}, {:artist=>"Lana Del Rey", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/0c1ab2edc3e4ed8295bf7764d42ac38a.jpg", :listeners_count=>763298, :title=>"Born to Die - The Paradise Edition"}, {:artist=>"Sandy Leah", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/fe5cc8b991c96362703d9577e6963a03.jpg", :listeners_count=>11584, :title=>"Sim"}, {:artist=>"Mercury Rev", :cover=>"https://lastfm.freetls.fastly.net/i/u/300x300/e52b4f05b43f4b17cba3e22d1d54897d.jpg", :listeners_count=>214108, :title=>"Deserter's Songs"}], :name=>"dream pop", :page=>1, :total_pages=>50}}
        end

        def artists_data
          {:tag=>{:artists=>[{:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/4c26cd9241f84016804d5e5113a91bcd.jpg", :listeners_count=>762945, :name=>"Cocteau Twins"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/1690daa9f14844b48ae324ab9fdf7a21.jpg", :listeners_count=>959129, :name=>"My Bloody Valentine"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/6117351f898b4a90caed5444b8772bac.jpg", :listeners_count=>698674, :name=>"Slowdive"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/1b31518a997f463bab58deb04669733a.jpg", :listeners_count=>1349997, :name=>"Beach House"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/7a6f28f261ed4f03b29c6180e7cb6d3e.jpg", :listeners_count=>925991, :name=>"Mazzy Star"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/c47182bcab68ba31bc330c0430345745.jpg", :listeners_count=>1053910, :name=>"Grimes"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/950211a631e64fdaa6046ec2f79b9123.jpg", :listeners_count=>318267, :name=>"Asobi Seksu"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/430774b06f44441ab806aa5979433f9a.jpg", :listeners_count=>187759, :name=>"Cranes"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/92fe3b980cf840578ba0b203ad6a5304.jpg", :listeners_count=>306224, :name=>"Lush"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/b9dc41122e5f4ed991743819f742e548.jpg", :listeners_count=>465354, :name=>"Ride"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/22f79109136549c1afb6942d06b56b7c.jpg", :listeners_count=>544773, :name=>"Wild Nothing"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/45d6877100384370a82772d08773672e.jpg", :listeners_count=>531495, :name=>"The Pains of Being Pure at Heart"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/e66a8a1fe94fc2d8bc5736c1a149d625.jpg", :listeners_count=>409950, :name=>"Galaxie 500"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/f8ef8352ea1d4dc6a8ae581b5956faed.jpg", :listeners_count=>347414, :name=>"School of Seven Bells"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/4490bb82c3c54ec0bc4a3085679c71ee.jpg", :listeners_count=>171088, :name=>"Chapterhouse"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/b28c7e82fb104bc686ca37cca709564e.jpg", :listeners_count=>2056166, :name=>"M83"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/ed0038d0cc1e07c9d6e7a0b92e004b24.jpg", :listeners_count=>440797, :name=>"Mercury Rev"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/473b0cba20bc47f8a32f78c35f3c08cd.jpg", :listeners_count=>315315, :name=>"The Chameleons"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/3c6d892836744ba283ec29c47e0c8c2c.jpg", :listeners_count=>526026, :name=>"Youth Lagoon"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/b4493384bed99d955573e78695015692.jpg", :listeners_count=>149735, :name=>"Mojave 3"}, {:image=>"https://lastfm.freetls.fastly.net/i/u/300x300/c2a2d6191c77662a8cd0d6a79ba3c5bc.jpg", :listeners_count=>198645, :name=>"A Sunny Day In Glasgow"}], :name=>"dream pop", :page=>1, :total_pages=>48}}
        end

        def info_data
          {:tag=>{:description=>"Dream pop is a genre of music where timbre and texture are as important, if not more so, than melody and song structure. Vocals when present are subsumed within the music and act as another texture or instrument. For example guitarists in dream pop played with feedback and effects to blur and mutate notes, to produce pure iridescent noise, not memorable melodies and toe-tapping tunes, although these when present they weren't the focus.\nThe Cocteau Twins are widely recognized as pioneers of the dream pop sound, their sound a collage of soft,  almost indecipherable vocals and languid soundscapes. A.R. Kane were the first band to explicitly describe their music as 'dream pop' and once claimed that \"a lot of the time we're trying to transform dream imagery into sounds.\" Which echoes My Bloody Valentine (who are a premier Dream Pop group who had a huge influence on 'shoegazers' like Slowdive and Lush) approach to recording music while in a state between sleep and wakefulness (hypnagogic).", :name=>"dream pop", :taggers_count=>24157, :taggings_count=>119450}}
        end

        def tracks_data
          {:tag=>{:name=>"dream pop", :page=>1, :total_pages=>20, :tracks=>[{:artist=>"Mazzy Star", :id=>1, :title=>"Fade Into You"}, {:artist=>"My Bloody Valentine", :id=>2, :title=>"Sometimes"}, {:artist=>"Slowdive", :id=>3, :title=>"Alison"}, {:artist=>"My Bloody Valentine", :id=>4, :title=>"When You Sleep"}, {:artist=>"Beach House", :id=>5, :title=>"Norway"}, {:artist=>"Beach House", :id=>6, :title=>"Zebra"}, {:artist=>"Eftos!rx", :id=>7, :title=>"Uten deg (Nogsf)"}, {:artist=>"My Bloody Valentine", :id=>8, :title=>"Soon"}, {:artist=>"Beach House", :id=>9, :title=>"Walk in the Park"}, {:artist=>"Mazzy Star", :id=>10, :title=>"Into Dust"}, {:artist=>"Cocteau Twins", :id=>11, :title=>"Lorelei"}, {:artist=>"Slowdive", :id=>12, :title=>"Souvlaki Space Station"}, {:artist=>"Slowdive", :id=>13, :title=>"When the Sun Hits"}, {:artist=>"Grimes", :id=>14, :title=>"Genesis"}, {:artist=>"My Bloody Valentine", :id=>15, :title=>"I Only Said"}, {:artist=>"My Bloody Valentine", :id=>16, :title=>"To Here Knows When"}, {:artist=>"志方あきこ", :id=>17, :title=>"Siren"}, {:artist=>"Slowdive", :id=>18, :title=>"Machine Gun"}, {:artist=>"Asobi Seksu", :id=>19, :title=>"Thursday"}, {:artist=>"My Bloody Valentine", :id=>20, :title=>"Blown a Wish"}, {:artist=>"M83", :id=>21, :title=>"Skin of the Night"}, {:artist=>"My Bloody Valentine", :id=>22, :title=>"Only Shallow"}, {:artist=>"Beach House", :id=>23, :title=>"Silver Soul"}, {:artist=>"Cocteau Twins", :id=>24, :title=>"Cherry-Coloured Funk"}, {:artist=>"My Bloody Valentine", :id=>25, :title=>"Loomer"}, {:artist=>"Grimes", :id=>26, :title=>"Oblivion"}, {:artist=>"Cocteau Twins", :id=>27, :title=>"Heaven or Las Vegas"}, {:artist=>"My Bloody Valentine", :id=>28, :title=>"Come in Alone"}, {:artist=>"Mazzy Star", :id=>29, :title=>"Flowers In December"}, {:artist=>"志方あきこ", :id=>30, :title=>"Sorriso"}, {:artist=>"Cocteau Twins", :id=>31, :title=>"Ivo"}, {:artist=>"Beach House", :id=>32, :title=>"Lover of Mine"}, {:artist=>"The xx", :id=>33, :title=>"Angels"}, {:artist=>"Beach House", :id=>34, :title=>"Myth"}, {:artist=>"Slowdive", :id=>35, :title=>"40 Days"}, {:artist=>"Beach House", :id=>36, :title=>"Gila"}, {:artist=>"M83", :id=>37, :title=>"Kim & Jessie"}, {:artist=>"志方あきこ", :id=>38, :title=>"La Corolle"}, {:artist=>"Cocteau Twins", :id=>39, :title=>"Bluebeard"}, {:artist=>"Beach House", :id=>40, :title=>"Take Care"}, {:artist=>"Cocteau Twins", :id=>41, :title=>"Pandora"}, {:artist=>"Ride", :id=>42, :title=>"Vapour Trail"}, {:artist=>"M83", :id=>43, :title=>"Graveyard Girl"}, {:artist=>"School of Seven Bells", :id=>44, :title=>"Half Asleep"}, {:artist=>"Beach House", :id=>45, :title=>"Used to Be"}, {:artist=>"Cocteau Twins", :id=>46, :title=>"Persephone"}, {:artist=>"Beach House", :id=>47, :title=>"10 Mile Stereo"}, {:artist=>"Beach House", :id=>48, :title=>"Better Times"}, {:artist=>"Memoryhouse", :id=>49, :title=>"To the Lighthouse"}, {:artist=>"志方あきこ", :id=>50, :title=>"Navigatoria"}]}}
        end
      end
    end
  end
end
