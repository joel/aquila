source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.0.2'

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platform: :ruby
gem 'momentjs-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
gem 'slim'

# bundle exec rake doc:rails generates the API under doc/api.

gem 'devise'
gem 'devise_invitable'
gem 'devise-i18n'
gem 'devise-i18n-views'

gem 'rails-i18n'
gem 'i18n-language-translations'

# gem 'i18n_helper', path: '.../i18n_helper'
gem 'i18n_helper', '>= 0.0.2'

gem 'mandrill-api'
# Mail CSS
# gem 'roadie'

gem 'figaro', '1.0.0.rc1'
gem 'less-rails'
gem 'rolify'
gem 'sendgrid'

# Waiting for this PR https://github.com/plataformatec/simple_form/pull/622 should accpeted
# gem 'simple_form', git: 'https://github.com/stephenprater/simple_form.git', branch: 'classes_on_use'
gem 'simple_form', git: 'git://github.com/stephenprater/simple_form.git', branch: 'classes_on_use'
# gem 'simple_form', '3.1.0.rc2'
# gem 'simple_form', '~>  3.0.0.rc'

# gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'twitter-bootswatch-rails', '3.2.0.0'
gem 'twitter-bootswatch-rails-fontawesome'
gem 'twitter-bootswatch-rails-helpers', '3.2.0.0'

# gem 'mongoid', git: 'git://github.com/mongoid/mongoid.git'
gem 'mongoid', '~> 4.0.0.alpha1'

gem 'timezone'
gem 'i18n-timezones'

# group :development, :staging do
#   gem 'i18n-one_sky'
# end

group :development do
  gem 'quiet_assets'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
end

group :development, :test do
  gem 'gemnasium'
  gem 'coveralls', require: false
  gem 'factory_girl_rails'
  gem 'rspec-rails', '3.0.2'
  gem 'rspec-activemodel-mocks'
  gem 'teaspoon'
end

group :production do
  gem 'puma'
  gem 'rails_12factor'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'timecop'
  gem 'i18n-spec'
end
