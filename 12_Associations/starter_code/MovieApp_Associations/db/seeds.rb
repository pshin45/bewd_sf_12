# puts "Adding a Whole bunch of movies"
# Movie.create [
#   {
#     title: "The Shawshank Redemption",
#     description: "Morgan Freeman in Jail",
#     year_released: 1994
#   },
#   {
#     title: "The Godfather",
#     description: "Hard core Gangster activity",
#     year_released: 1972
#   },
#   {
#     title: "The Godfather: Part II",
#     description: "More Gangsters, aw yea",
#     year_released: 1974
#   },
#   {
#     title: "Pulp Fiction",
#     description: "Samuel Jackson screams a LOT! Say What again!",
#     year_released: 1994
#   },
#   {
#     title: "The Good, the Bad and the Ugly",
#     description: "Cowboys will be cowboys",
#     year_released: 1966
#   },
#   {
#     title: "12 Angry Men",
#     description: "Really old movie about a court case. They have anger issues",
#     year_released: 1957
#   },
#   {
#     title: "The Dark Knight",
#     description: "Batman (not a super hero), battles the joker for who can have the most not normal voice ever",
#     year_released: 2008
#   },
#   {
#     title: "Schindler's List",
#     description: "It's about the Holocaust I think",
#     year_released: 1993
#   },
#   {
#     title: "The Lord of the Rings: The Return of the King",
#     description: "Something to do with Hobbits",
#     year_released: 2003
#   },
#   {
#     title: "Fight Club",
#     description: "This is your life... Apparently it's really easy to make explosives",
#     year_released: 1999
#   },
#   {
#     title: "Star Wars: Episode V - The Empire Strikes Back",
#     description: "The best Star Wars EVER",
#     year_released: 1980
#   },
#   {
#     title: "The Lord of the Rings: The Fellowship of the Ring",
#     description: "More Hobbits",
#     year_released: 2001
#   },
#   {
#     title: "One Flew Over the Cuckoo's Nest",
#     description: "Crazy guy does crazy stuff",
#     year_released: 1975
#   },
#   {
#     title: "Inception",
#     description: "Dream in a dream, in a nap, in a dozing off in class",
#     year_released: 2010
#   },
#   {
#     title: "Goodfellas",
#     description: "I think Joe Pesci is in this one",
#     year_released: 1990
#   },
#   {
#     title: "Star Wars",
#     description: "Let the Wookie win",
#     year_released: 1977
#   },
#   {
#     title: "Seven Samurai",
#     description: "One of the best films ever made... according to Wikipedia",
#     year_released: 1954
#   },
#   {
#     title: "Forrest Gump",
#     description: "Life is like a box of chocolates. It will give you diabetes",
#     year_released: 1994
#   },
#   {
#     title: "The Matrix",
#     description: "Playing videogames can teach you kung-fu",
#     year_released: 1999
#   },
#   {
#     title: "The Lord of the Rings: The Two Towers",
#     description: "Again with the Hobbits and their jewelry obsession",
#     year_released: 2002
#   }]

puts 'Adding seed stories...'
movie1 = Movie.create title: "Star Wars: The Force Awakens",
             description: 'http://qz.com/85400/moving-to-open-plan-offices-makes-employees-less-productive-less-happy-and-more-likely-to-get-sick/#',
             year_released: 2015
             genre: "Science Fiction"

movie2 = Movie.create title: "The Matrix",
             description: 'Playing videogames can teach you kung-fu',
             year_released: 1999
             genre: "Science Fiction"

movie3 = Movie.create title: "The Lord of the Rings: The Two Towers",
             description: 'Again with the Hobbits and their jewelry obsession',
             year_released: 2002
             genre: "Fantasy"

movie4 = Movie.create title: "Forrest Gump",
             description: 'Life is like a box of chocolates. It will give you diabetes',
             year_released: 1994
             genre: "Drama"

puts 'Done adding movies'

puts 'Adding seed actors...'

actor1 = Actor.create title: "Keanu Reeves"
actor2 = Actor.create title: "Tom Hanks"
actor3 = Actor.create title: "Lawrence Fishburne"
actor4 = Actor.create title: "Harrison Ford"
actor5 = Actor.create title: "Elijah Wood"
actor6 = Actor.create title: "John Smith"

puts 'Done adding actors'

puts 'Adding movie/actor connections'

movie1.actors = [actor1, actor2, actor3]
movie1.save()

movie2.actors = [actor4]
movie2.save()

movie3.actors = [actor5, actor6]
movie3.save()

movie4.actors = [actor2, actor4]
movie3.save()

puts 'Done adding category/story connections'