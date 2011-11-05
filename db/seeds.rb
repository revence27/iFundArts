# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pros = Project.create(
  [
      {
        :name => 'Soro Album',
        :image => 'projects/keita.png',
        :description => 'This album should invent a whole new genre of music.',
        :ends_at => Time.now + (10 + rand(30)).days,
        :account_id => 0,
        :needs => 40_000
      },
      {
        :name => 'Parachutes Album',
        :image => 'projects/coldplay.jpg',
        :description => 'This album should help our band become a force to reckon with.',
        :ends_at => Time.now + (10 + rand(30)).days,
        :account_id => 0,
        :needs => 40_000
      },
      {
        :name => 'Misubaawa Album',
        :image => 'projects/kirya.gif',
        :description => 'This album should win international awards.',
        :ends_at => Time.now + (10 + rand(30)).days,
        :account_id => 0,
        :needs => 40_000
      }
  ])
