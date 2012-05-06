# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cats  = ProjectCategory.create([
  {
    :name => 'Music'
  },
  {
    :name => 'Film and video'
  },
  {
    :name => 'Photography'
  },
  {
    :name => 'Comics'
  },
  {
    :name => 'Dance'
  },
  {
    :name => 'Theatre'
  },
  {
    :name => 'Crafts'
  },
  {
    :name => 'Fine Arts'
  },
  {
    :name => 'Design'
  },
  {
    :name => 'Publishing'
  },
  {
    :name => 'Fashion'
  },
  {
    :name => 'New Media/Games'
  },
])

pros = Project.create(
  [
      {
        :name => 'Soro Album',
        :image => 'projects/keita.png',
        :description => 'This album should invent a whole new genre of music.',
        :ends_at => Time.now + (10 + rand(30)).days,
        :account_id => 0,
        :category_id  => cats[rand(cats.length)].id,
        :has_got => 40_000 * rand,
        :needs => 40_000 * rand(9)
      },
      {
        :name => 'Parachutes Album',
        :image => 'projects/coldplay.jpg',
        :description => 'This album should help our band become a force to reckon with.',
        :ends_at => Time.now + (10 + rand(30)).days,
        :account_id => 0,
        :category_id  => cats[rand(cats.length)].id,
        :has_got => 40_000 * rand,
        :needs => 40_000 * rand(9)
      },
      {
        :name => 'Misubaawa Album',
        :image => 'projects/kirya.gif',
        :description => 'This album should win international awards.',
        :ends_at => Time.now + (10 + rand(30)).days,
        :account_id => 0,
        :category_id  => cats[rand(cats.length)].id,
        :has_got => 40_000 * rand,
        :needs => 40_000 * rand(9)
      }
  ])
