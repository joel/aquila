# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vault do
    subdomain { generate(:subdomain) }
  end
end
