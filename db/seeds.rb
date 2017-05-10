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
@user = User.create!(
  email: 'test@test.com', password: 'asdfasdf',
  password_confirmation: 'asdfasdf', first_name: 'Jon', last_name: 'Snow',
  phone: '966696717'
)
User.create!(
  email: 'test2@test.com', password: 'asdfasdf',
  password_confirmation: 'asdfasdf', first_name: 'Jane', last_name: 'Hot',
  phone: '966696717'
)

puts '1 User created'

AdminUser.create(
  email: 'admin@test.com', password: 'asdfasdf',
  password_confirmation: 'asdfasdf', first_name: 'Admin', last_name: 'Name',
  phone: '966696717'
)

puts '1 Admin User created'

100.times do |post|
  Post.create!(
    date: Date.today,
    rationale: "#{post} rationale content Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    user_id: @user.id, overtime_request: 2.5
  )
end

puts '100 Posts have been created'

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"
