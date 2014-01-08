# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goldbrick do
    association :vault, strategy: :build
    sequence(:name) { |n| "name-#{n}-#{rand(10000 * n)}" }
    sequence(:link) { |n| "link-#{n}-#{rand(10000 * n)}" }
    sequence(:login) { |n| "login-#{n}-#{rand(10000 * n)}" }
    sequence(:password) { |n| "password-#{n}-#{rand(10000 * n)}" }
    sequence(:content) { |n| "content-#{n}-#{rand(10000 * n)}" }
  end
end
