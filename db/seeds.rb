# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating students"
Student.destroy_all

20.times do |y|
  putc "."
  s = Student.create!(
   student_id:  Faker::Number.number(10),
   first_name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
 )
 s.avatar = Rails.root.join("app/assets/images/profile_pics/stock-profile-#{y + 1}.jpeg").open
 s.save!

end

puts "done"
