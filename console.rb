require('pry-byebug')
require_relative('models/star.rb')
require_relative('models/movie.rb')
require_relative('models/casting.rb')

Casting.delete_all()
Star.delete_all()
Movie.delete_all()

star1 = Star.new({'first_name' => 'Lion', 'last_name' => 'King'})
star2 = Star.new({'first_name' => 'Tiger', 'last_name' => 'Prince'})

star1.save()
star2.save()

movie1 = Movie.new({'title' => 'Psycho', 'genre' => 'Thriller'})
movie2 = Movie.new({'title' => 'Finding Nemo', 'genre' => 'Family'})

movie1.save()
movie2.save()

casting1 = Casting.new({ 'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => '1000'})
casting2 = Casting.new({ 'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => '2000'})
casting1.save()

stars = Star.all()
movies = Movie.all()
castings = Casting.all()

binding.pry
nil
