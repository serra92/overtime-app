FactoryGirl.define do
  factory :post do
    date Date.today
    rationale 'Some Rationale'
    user User.new(
      first_name: 'Jon', last_name: 'Snow', email: 'test@test.com',
      password: 'asdfasdf', password_confirmation: 'asdfasdf'
    )
  end

  factory :second_post, class: 'Post' do
    date Date.yesterday
    rationale 'Some more content'
    user User.new(
      first_name: 'Jon', last_name: 'Snow', email: 'test@test.com',
      password: 'asdfasdf', password_confirmation: 'asdfasdf'
    )
  end
end
