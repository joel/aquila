rvm use `cat .ruby-version`@`cat .ruby-gemset` --create
bundle
RAILS_ENV=test bundle exec rspec spec
