    10.times do
      Billboard.create( 
        name: 'Top 100',
        region: Faker::Nation.nationality,
        genre: Faker::Music.genre,
      )
    end

    10.times do
      Artist.create( 
        name: Faker::Music.band,
        genre: Faker::Music.genre,
      )
    end

    20.times do
      Song.create( 
        name: Faker::Book.title,
        genre: Faker::Music.genre,
      )
    end

    puts "Finished Seeding"