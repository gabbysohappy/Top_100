    10.times do
      Billboard.create( 
        name: 'Top 100',
        region: Faker::Nation.nationality,
        genre: Faker::Music.genre,
      )
    end
    10.times do
      artist = Artist.create( 
        name: Faker::Music.band,
        genre: Faker::Music.genre,
      )
      20.times do
        Song.create( 
          name: Faker::Book.title,
          genre: Faker::Music.genre,
          artist_id: artist.id
          # billboard_id: billboards.sample.id
        )
      end
    end

    puts "Finished Seeding"
