# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do
# 	name = Faker::Name.first_name
# 	last_name = Faker::Name.unique.last_name
# 	century = Faker::Number.within(range: 16..20)
# 	Author.create(name: name, last_name: last_name, century: century)
# end

200.times do
	book_title = Faker::Book.title
	book_pages = Faker::Number.within(range: 100..1000)
  	body = Faker::Books::Dune.saying
  	year = Faker::Number.within(range: 1800..2010)
  	genre = Faker::Book.genre
	book_author_id = rand(2..102)
	Book.create(title:book_title, pages:book_pages, year:year, body: body, genre: genre, author_id:book_author_id)
end
