Company.delete_all
Theater.delete_all
Movie.delete_all
Ticket.delete_all
User.delete_all

c1 = Company.create(:name => 'Projectr Theater')

u1 = User.create(:name => 'Fred', :email => 'fred@fredmail.com', :password => 'x', :password_confirmation => 'x')
u2 = User.create(:name => 'Lucy', :email => 'lucy@gmail.com', :password => 'x', :password_confirmation => 'x')
u3 = User.create(:name => 'Lupe', :email => 'lupe@gmail.com', :password => 'x', :password_confirmation => 'x')

t1 = Theater.create(:name => 'Room 1', :num_seats => 10)
t2 = Theater.create(:name => 'Room 2', :num_seats => 10)
t3 = Theater.create(:name => 'Room 3', :num_seats => 10)
t4 = Theater.create(:name => 'Room 4', :num_seats => 10)

m1 = Movie.create(:name => 'Nashville', :director => 'Robert Altman', :actors => 'Keith Carradine, Ned Beatty, Karen Black', :release_year => '1975', :description => 'Over the course of a few hectic days, numerous interrelated individuals prepare for a political convention as secrets and lies are surfaced and revealed.', :runtime => '159 minutes', :poster => 'http://ia.media-imdb.com/images/M/MV5BMjA2MTUzOTc0OF5BMl5BanBnXkFtZTcwOTU4OTcxMQ@@._V1._SX342_SY475_.jpg', :big_img => 'http://www.dbcovers.com/imagenes/backdrops/grandes/nashville_1975//nashville_1975_1.jpg')
m2 = Movie.create(:name => 'The Conversation', :director => 'Francis Ford Coppola', :actors => 'Gene Hackman, John Cazale', :release_year => '1974', :description => 'A paranoid and personally-secretive surveillance expert has a crisis of conscience when he suspects that a couple he is spying on will be murdered.', :runtime => '113 minutes', :poster => 'http://ia.media-imdb.com/images/M/MV5BMjY0NjYzNjkwNF5BMl5BanBnXkFtZTcwNTk3MzU3Mg@@._V1._SX640_SY953_.jpg', :big_img => 'http://www.graffitiwithpunctuation.net/wp-content/uploads/2012/10/The-Conversation-1.jpeg')
m3 = Movie.create(:name => 'Cockfighter', :director => 'Monte Hellman', :actors => 'Warren Oates, Harry Dean Stanton', :release_year => '1974', :description => ' Set in the game-fighting pits of the Deep South, it follows a season on the circuit with Frank Mansfield (Warren Oates), a veteran fighter whose hubris has cost him everything and who rebuilds his stable and his reputation while honoring a vow of silence.', :runtime => '83 minutes', :poster => 'http://wrongsideoftheart.com/wp-content/gallery/posters-c/cockfighter_poster_01.jpg', :big_img => 'http://jto.s3.amazonaws.com/wp-content/uploads/2013/01/ff20130118a2b.jpg')

tk1 = Ticket.create(:seat_number => 11, :is_bought => true)
tk2 = Ticket.create(:seat_number => 11, :is_bought => true)
tk3 = Ticket.create(:seat_number => 11)
tk4 = Ticket.create(:seat_number => 11)
tk5 = Ticket.create(:seat_number => 21)
tk6 = Ticket.create(:seat_number => 22)
tk7 = Ticket.create(:seat_number => 23)
tk8 = Ticket.create(:seat_number => 24)
tk9 = Ticket.create(:seat_number => 31, :is_bought => true)
tk10 = Ticket.create(:seat_number => 32, :is_bought => true)
tk11 = Ticket.create(:seat_number => 33, :is_bought => true)
tk12 = Ticket.create(:seat_number => 34)
tk13 = Ticket.create(:seat_number => 41)
tk14 = Ticket.create(:seat_number => 42, :is_bought => true)
tk15 = Ticket.create(:seat_number => 43)
tk16 = Ticket.create(:seat_number => 44)

c1.theaters << t1 << t2 << t3 << t4

m1.theaters << t1 << t2
m2.theaters << t3
m3.theaters << t4

t1.tickets << tk1 << tk2 << tk3 << tk4
t2.tickets << tk5 << tk6 << tk7 << tk8
t3.tickets << tk9 << tk10 << tk11 << tk12
t4.tickets << tk13 << tk14 << tk15 << tk16

u1.tickets << tk1 << tk2
u2.tickets << tk9 << tk10 << tk11
u3.tickets << tk14

