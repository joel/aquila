# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    association :vault, strategy: :build
    sequence(:name) { |n| "user-#{n}_#{rand(10000 * n)}" }
    email { generate(:email) }
    password 'secret'
    password_confirmation 'secret'

    after :create, &:confirm!
  end
end
