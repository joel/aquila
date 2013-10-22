# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goldbrick do
    association :vault, strategy: :build
    name "MyString"
    login "MyString"
    password "MyString"
    content "MyText"
  end
end
