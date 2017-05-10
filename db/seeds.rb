# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create(
#     [{ name: 'Star Wars' }, { name: 'Lord of the Rings' }]
#   )
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  email: 'test@test.com', password: 'asdfasdf',
  password_confirmation: 'asdfasdf', first_name: 'Jon', last_name: 'Snow'
)
User.create!(
  email: 'test2@test.com', password: 'asdfasdf',
  password_confirmation: 'asdfasdf', first_name: 'Jane', last_name: 'Hot'
)

puts '1 User created'

AdminUser.create(
  email: 'admin@test.com', password: 'asdfasdf',
  password_confirmation: 'asdfasdf', first_name: 'Admin', last_name: 'Name'
)

puts '1 Admin User created'

100.times do |post|
  Post.create!(
    date: Date.today, rationale: "#{post} rationale content",
    user_id: User.first.id, overtime_request: 2.5
  )
end

puts '100 Posts have been created'
