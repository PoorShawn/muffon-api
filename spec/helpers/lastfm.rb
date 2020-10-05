module Helpers
  module LastFM
    RANDOM_STRING = 'wejlhg239gh23'.freeze

    class << self
      def artist_data
        {:artist=>{:name=>"Wild Nothing", :mbid=>"a181595e-5b84-4439-a5f4-f548ddfb64df", :listeners_count=>544406, :plays_count=>18874876, :description=>"Wild Nothing is the solo project of Virginia-born Jack Tatum. Tatum began recording under the moniker Wild Nothing in the summer of 2009 in Blacksburg, Virginia. Upon gathering attention in indie music circles, he was signed with the Captured Tracks record label and began touring with a band. His debut full-length, \"Gemini,\" was released in spring 2010 to acclaim from Pitchfork Media and the music editors at Amazon.com. A follow-up album called \"Nocturne\" was released in 2012. His second EP \"Empty Estate\" was released in May 2013. Tatum's third LP entitled \"Life of Pause\" was released on February 19, 2016.", :tags=>["dream pop", "shoegaze", "indie pop", "indie", "seen live"], :similar_artists=>["Craft Spells", "Beach Fossils", "DIIV", "Small Black", "Blouse"]}}
      end

      def artist_images_data
        {:artist=>{:name=>"Wild Nothing", :images=>["https://lastfm.freetls.fastly.net/i/u/200ae0a4719dd1cc72a2e86411d63335", "https://lastfm.freetls.fastly.net/i/u/22f79109136549c1afb6942d06b56b7c", "https://lastfm.freetls.fastly.net/i/u/da501dd32b674fd8a142d6c37c215482", "https://lastfm.freetls.fastly.net/i/u/85382d1d98294ee85c063271310c048d", "https://lastfm.freetls.fastly.net/i/u/7027e7ec21b1a2441f63bd0ba63376a4", "https://lastfm.freetls.fastly.net/i/u/3ab61151452be7ec198185106701b4bf", "https://lastfm.freetls.fastly.net/i/u/eec8d4a19d8b8bfcca4dda63852c2d96", "https://lastfm.freetls.fastly.net/i/u/366b5319c7984bb3b5084d12cbc5c7a7", "https://lastfm.freetls.fastly.net/i/u/19f85029859341e18b2eb68ebb856f3e", "https://lastfm.freetls.fastly.net/i/u/897a6c0bda434287956158c691090e57", "https://lastfm.freetls.fastly.net/i/u/bc4e3c8d6028e4944131a7d2563c9cd3", "https://lastfm.freetls.fastly.net/i/u/61d2f5916075eee85d3cfbe440e3c5ee", "https://lastfm.freetls.fastly.net/i/u/26c9b5bba82125477e9bd4c6b2f4650d", "https://lastfm.freetls.fastly.net/i/u/42ab10a6446fc131831716b4f6516a5f", "https://lastfm.freetls.fastly.net/i/u/98b0b9c5739546c7b5ea379950ef72e7", "https://lastfm.freetls.fastly.net/i/u/fa739b942632407bacf7c0683fbd6aa1", "https://lastfm.freetls.fastly.net/i/u/ebb4be5dd53f4399965c5235f48e3964", "https://lastfm.freetls.fastly.net/i/u/f9398f6f4c80dc5caee666e175f4e4bd", "https://lastfm.freetls.fastly.net/i/u/7b351bd330ca462b909c4932c2647e6e", "https://lastfm.freetls.fastly.net/i/u/b6502cb046b445d6ade64e3511cc922b", "https://lastfm.freetls.fastly.net/i/u/5f583b3b5336475caa2beeb93a7d545c", "https://lastfm.freetls.fastly.net/i/u/721721158f1e4cc7cc41604349bd535a", "https://lastfm.freetls.fastly.net/i/u/6bf397e317ff80d51042cc97757eafc3", "https://lastfm.freetls.fastly.net/i/u/ef46ec1540f943e19af0d5ade9f08da6", "https://lastfm.freetls.fastly.net/i/u/ac0be21ef65a90aab89b0257be8ff57b", "https://lastfm.freetls.fastly.net/i/u/1831534e73f031571d9f981440dbbb5a", "https://lastfm.freetls.fastly.net/i/u/aa8ef34d57785709a61e8f131bee727e", "https://lastfm.freetls.fastly.net/i/u/e0126f28d4f64d4dcd8d276933b93bfc", "https://lastfm.freetls.fastly.net/i/u/adf1d666b7db4ee8ab65fa9afbc6f74c", "https://lastfm.freetls.fastly.net/i/u/f076c0a8e5d741d9be5a0a5099b8a40b", "https://lastfm.freetls.fastly.net/i/u/bffc54f3e3b84bb288b090eb6d56b3dc", "https://lastfm.freetls.fastly.net/i/u/8612765cc17f4b0996cdca0f6d08928b", "https://lastfm.freetls.fastly.net/i/u/b80b543f5e3b42679ad3ab005a7a7bdf", "https://lastfm.freetls.fastly.net/i/u/fa582fdb0fb644abb14388d0f75f7fcd", "https://lastfm.freetls.fastly.net/i/u/1d0427bdc6624bc88003f18c99a4206f", "https://lastfm.freetls.fastly.net/i/u/b794e49e786318fb9fd2575944881340", "https://lastfm.freetls.fastly.net/i/u/4ea801e45ece470ca043ed84eb32aa14", "https://lastfm.freetls.fastly.net/i/u/4ded266f515148709b7e281035c28995", "https://lastfm.freetls.fastly.net/i/u/d9c458e967a5f95b6b011c756bdd7dd5", "https://lastfm.freetls.fastly.net/i/u/79c78fd900dd4a3ba943535ab0513e28"], :page=>1}}
      end

      def artist_tracks_data
        {:artist=>{:name=>"Wild Nothing", :tracks=>[{:title=>"Chinatown", :mbid=>"9a74b1e7-a7a9-46fc-8ad3-58306fdac86f", :plays_count=>1211387, :listeners_count=>206850}, {:title=>"Shadow", :mbid=>"444148a3-ee43-44f3-b855-d50ea62a0bee", :plays_count=>1187719, :listeners_count=>197111}, {:title=>"Live In Dreams", :mbid=>"c294d6ba-7ed0-494a-94c2-2a0f8f6a68ab", :plays_count=>970555, :listeners_count=>161337}, {:title=>"Summer Holiday", :mbid=>"b48a77ec-eb37-4ab0-a6d9-626d5b5aa1aa", :plays_count=>969557, :listeners_count=>160662}, {:title=>"Nocturne", :mbid=>"a1a28a89-2419-4d4e-af24-99038ca601cf", :plays_count=>824737, :listeners_count=>131328}, {:title=>"Paradise", :mbid=>"adfc8f42-00cb-4bff-a243-c5b85bfc35e3", :plays_count=>728431, :listeners_count=>122518}, {:title=>"Drifter", :mbid=>"6a864fbe-1e58-4485-84cd-b451e786fb69", :plays_count=>588433, :listeners_count=>108817}, {:title=>"Only Heather", :mbid=>"701993c0-554f-4b8a-b2a1-bf27d560a349", :plays_count=>636130, :listeners_count=>105436}, {:title=>"Midnight Song", :mbid=>"fbc9b4e8-5848-4af0-badb-9efe7d043d45", :plays_count=>570136, :listeners_count=>104607}, {:title=>"Pessimist", :mbid=>"284b1ad5-8b8e-4573-9884-cbc2a7c1d9b1", :plays_count=>508563, :listeners_count=>100926}, {:title=>"O, Lilac", :mbid=>"f3a00f3f-9fba-4719-808e-caa5600a7f4c", :plays_count=>511233, :listeners_count=>96827}, {:title=>"Bored Games", :mbid=>"7f53f6ee-a312-45d3-b70b-1f83eef5e3b0", :plays_count=>496684, :listeners_count=>96804}, {:title=>"Confirmation", :mbid=>"018fb869-c866-4cfd-9ad6-fcb0c3c1f317", :plays_count=>490415, :listeners_count=>94085}, {:title=>"My Angel Lonely", :mbid=>"1fa532f2-271b-4bf6-97c9-915975d8c2e5", :plays_count=>444641, :listeners_count=>90743}, {:title=>"Through the Grass", :mbid=>"e81266e1-6a8b-46f4-a562-527c195191b2", :plays_count=>466408, :listeners_count=>89785}, {:title=>"The Witching Hour", :mbid=>"ec54d862-4f2e-4cea-8062-610af10f0179", :plays_count=>405354, :listeners_count=>85924}, {:title=>"This Chain Won’t Break", :mbid=>"95676ea7-a800-4dd9-ab10-9d31b6063b31", :plays_count=>444761, :listeners_count=>85570}, {:title=>"Our Composition Book", :mbid=>"94320033-aefa-41b4-9298-a118fa489742", :plays_count=>424157, :listeners_count=>85252}, {:title=>"Disappear Always", :mbid=>"19e07185-1bff-4c25-a30e-1753d0f5e6ae", :plays_count=>465785, :listeners_count=>85038}, {:title=>"Golden Haze", :mbid=>"2454d39a-b1f4-4e6a-960e-446c88d3966a", :plays_count=>421825, :listeners_count=>82868}, {:title=>"Gemini", :mbid=>"022e108e-0649-4095-a6a0-b879c155f09c", :plays_count=>422657, :listeners_count=>82137}, {:title=>"Counting Days", :mbid=>"37e2cc22-7960-476e-91ca-9b6704d688bb", :plays_count=>419214, :listeners_count=>79070}, {:title=>"The Blue Dress", :mbid=>"65aa9814-ee46-48bf-8a9a-e876b6f0d143", :plays_count=>370136, :listeners_count=>73969}, {:title=>"Rheya", :mbid=>"8b1cc6c7-e627-4e28-a5bd-9d37d40c737f", :plays_count=>365201, :listeners_count=>72733}, {:title=>"A Dancing Shell", :mbid=>"2251433b-7e07-49d8-ae3b-9074ee0ed4c2", :plays_count=>216195, :listeners_count=>46594}, {:title=>"Vultures Like Lovers", :mbid=>"99c02875-a146-46cb-b247-e6fe5fb36daf", :plays_count=>226611, :listeners_count=>45695}, {:title=>"Shallow Water", :mbid=>nil, :plays_count=>166367, :listeners_count=>45370}, {:title=>"Blue Wings", :mbid=>nil, :plays_count=>174495, :listeners_count=>44268}, {:title=>"Take Me In", :mbid=>"06cbe899-06c5-4ac3-a3ea-2d84225c9797", :plays_count=>189171, :listeners_count=>42459}, {:title=>"Whenever I", :mbid=>nil, :plays_count=>160607, :listeners_count=>40230}, {:title=>"Letting Go", :mbid=>nil, :plays_count=>179961, :listeners_count=>39757}, {:title=>"Your Rabbit Feet", :mbid=>"dbf9e566-6ae9-4a6c-acf2-9bd4868bfbf8", :plays_count=>193332, :listeners_count=>39499}, {:title=>"Quiet Hours", :mbid=>"dde504e7-be70-40e1-99a9-43c4847800dc", :plays_count=>148542, :listeners_count=>38772}, {:title=>"The Body in Rainfall", :mbid=>"3abf71bd-8ec0-4f7c-a0af-e451f2210de9", :plays_count=>135974, :listeners_count=>37506}, {:title=>"Reichpop", :mbid=>nil, :plays_count=>130400, :listeners_count=>37097}, {:title=>"Partners In Motion", :mbid=>nil, :plays_count=>166649, :listeners_count=>36571}, {:title=>"TV Queen", :mbid=>nil, :plays_count=>126704, :listeners_count=>34800}, {:title=>"Ocean Repeating (Big-eyed Girl)", :mbid=>"e7b36e25-167d-4737-8625-b3a89a6de388", :plays_count=>146029, :listeners_count=>34646}, {:title=>"Asleep", :mbid=>"e0faf632-f447-4c72-b38e-20c7df8b6efa", :plays_count=>123335, :listeners_count=>32019}, {:title=>"To Know You", :mbid=>nil, :plays_count=>117313, :listeners_count=>30455}, {:title=>"Ride", :mbid=>"693386bf-c882-4bf1-a611-10f37d6e2f2f", :plays_count=>111835, :listeners_count=>29751}, {:title=>"Nowhere", :mbid=>"2148a16b-58fb-4f70-951c-c42ac48d2634", :plays_count=>90156, :listeners_count=>28945}, {:title=>"Cloudbusting", :mbid=>"fb4a8f95-3890-4af8-b5eb-0ad57f5579fc", :plays_count=>119015, :listeners_count=>27404}, {:title=>"On Guyot", :mbid=>"b390931f-f594-40b0-984a-b63b0ebbf762", :plays_count=>89329, :listeners_count=>26942}, {:title=>"Data World", :mbid=>"4071f0ca-81b5-4653-a778-657bc48eb0da", :plays_count=>98417, :listeners_count=>26760}, {:title=>"Foyer", :mbid=>nil, :plays_count=>83643, :listeners_count=>25806}, {:title=>"Alien", :mbid=>nil, :plays_count=>94100, :listeners_count=>25210}, {:title=>"Life of Pause", :mbid=>nil, :plays_count=>91371, :listeners_count=>24426}, {:title=>"A Woman's Wisdom", :mbid=>nil, :plays_count=>72566, :listeners_count=>24285}, {:title=>"Canyon on Fire", :mbid=>nil, :plays_count=>88866, :listeners_count=>23662}], :page=>1}}
      end

      def not_found_data
        { error: 'Not found.' }
      end
    end
  end
end
