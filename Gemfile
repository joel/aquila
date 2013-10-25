source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.1.0'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'


  # bundle exec rake doc:rails generates the API under doc/api.

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'less-rails'
gem 'rolify'
gem 'sendgrid'
gem 'simple_form', git: 'https://github.com/stephenprater/simple_form.git', branch: 'classes_on_use'
# gem 'simple_form', '>= 3.0.0.rc'
gem 'slim'
gem 'therubyracer', :platform=>:ruby
# gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'twitter-bootswatch-rails', '~> 3.0.0'
gem 'twitter-bootswatch-rails-helpers'

gem 'mongoid', git: 'git://github.com/mongoid/mongoid.git'

group :development do
  gem 'guard', '2.0.5'
  gem 'spork', '~> 1.0rc'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'haml-rails'
  gem 'haml2slim'
  gem 'html2haml'
  gem 'hub', require: nil
  gem 'quiet_assets'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :production do
  gem 'unicorn'
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end

