module Helpers
  module LastFM
    module Track
      class << self
        def info_data
          {:track=>{:album=>"Hounds of Love", :artist=>"Kate Bush", :description=>"\"Hounds of Love\" is a song written, produced and performed by British singer Kate Bush. It is the title track and the third single released from her number one 1985 album Hounds of Love. The single was released on 24 February 1986, and reached number 18 in the UK Singles Chart. \n\nIn October 2004, Q magazine placed this song at No.21 in its list of the 50 greatest British songs of all-time. \n\nBritish band The Futureheads covered the song in 2005, scoring a UK top 10 hit with it.", :id=>1, :images=>{:extrasmall=>"https://lastfm.freetls.fastly.net/i/u/64s/391be121643ab50801b7955b0ac5b50c.png", :large=>"https://lastfm.freetls.fastly.net/i/u/600x600/391be121643ab50801b7955b0ac5b50c.png", :medium=>"https://lastfm.freetls.fastly.net/i/u/300x300/391be121643ab50801b7955b0ac5b50c.png", :original=>"https://lastfm.freetls.fastly.net/i/u/391be121643ab50801b7955b0ac5b50c.png", :small=>"https://lastfm.freetls.fastly.net/i/u/174s/391be121643ab50801b7955b0ac5b50c.png"}, :length=>182, :listeners_count=>273791, :mbid=>"984deb15-92f3-4917-9929-c0e930dc8a54", :plays_count=>1785804, :tags=>["80s", "female vocalists", "pop", "alternative", "singer-songwriter"], :title=>"Hounds of Love"}}
        end

        def similar_data
          {:track=>{:artist=>"Wild Nothing", :page=>2, :similar=>[{:artist=>"Slowdive", :id=>1, :length=>231, :title=>"Alison"}, {:artist=>"Slowdive", :id=>2, :length=>287, :title=>"When the Sun Hits"}, {:artist=>"Cigarettes After Sex", :id=>3, :length=>0, :title=>"Apocalypse"}, {:artist=>"Fazerdaze", :id=>4, :length=>0, :title=>"Lucky Girl"}, {:artist=>"Ride", :id=>5, :length=>0, :title=>"Vapour Trail - 2001 Remaster"}, {:artist=>"Alvvays", :id=>6, :length=>0, :title=>"In Undertow"}, {:artist=>"Blonde Redhead", :id=>7, :length=>317, :title=>"23"}, {:artist=>"Cocteau Twins", :id=>8, :length=>361, :title=>"Heaven or Las Vegas"}, {:artist=>"Still Corners", :id=>9, :length=>374, :title=>"The Trip"}, {:artist=>"Galaxie 500", :id=>10, :length=>234, :title=>"Tugboat"}], :title=>"chinatown", :total_pages=>25}}
        end
      end
    end
  end
end
