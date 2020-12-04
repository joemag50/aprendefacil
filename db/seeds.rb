# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# for i in 0..30
#   Activity.create!(
#     {
#       title: Faker::Lorem.sentence,
#       description: Faker::Lorem.paragraph_by_chars(number: 512),
#       content: Faker::Lorem.paragraph_by_chars(number: 512),
#       exercise: Faker::Lorem.paragraph_by_chars(number: 512),
#       duration: 1.0,
#       skill_level: 1
#     }
#   )
# end

for i in 0..30
  Activity.create!(
    {
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph_by_chars(number: 512),
      content: Faker::Lorem.paragraph_by_chars(number: 512),
      exercise: Faker::Lorem.paragraph_by_chars(number: 512),
      duration: 1.0,
      skill_level: 2
    }
  )
end

for i in 0..30
  Activity.create!(
    {
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph_by_chars(number: 512),
      content: Faker::Lorem.paragraph_by_chars(number: 512),
      exercise: Faker::Lorem.paragraph_by_chars(number: 512),
      duration: 1.0,
      skill_level: 3
    }
  )
end

for i in 0..30
  Activity.create!(
    {
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph_by_chars(number: 512),
      content: Faker::Lorem.paragraph_by_chars(number: 512),
      exercise: Faker::Lorem.paragraph_by_chars(number: 512),
      duration: 1.0,
      skill_level: 4
    }
  )
end

for i in 0..30
  Activity.create!(
    {
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph_by_chars(number: 512),
      content: Faker::Lorem.paragraph_by_chars(number: 512),
      exercise: Faker::Lorem.paragraph_by_chars(number: 512),
      duration: 1.0,
      skill_level: 5
    }
  )
end

for i in 0..30
  Activity.create!(
    {
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph_by_chars(number: 512),
      content: Faker::Lorem.paragraph_by_chars(number: 512),
      exercise: Faker::Lorem.paragraph_by_chars(number: 512),
      duration: 1.0,
      skill_level: 6
    }
  )
end
