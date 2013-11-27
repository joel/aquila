source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.0.0'
gem 'rails', '4.0.1'

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

gem 'devise', '>= 3.2.1'
gem 'devise_invitable', '>= 1.3.1'
gem 'mandrill-api'
# Mail CSS
# gem 'roadie'

gem 'figaro'
gem 'less-rails'
gem 'rolify'
gem 'sendgrid'
# Waiting for this PR https://github.com/plataformatec/simple_form/pull/622 should accpeted
# gem 'simple_form', git: 'https://github.com/stephenprater/simple_form.git', branch: 'classes_on_use'
gem 'simple_form', git: 'git://github.com/stephenprater/simple_form.git', branch: 'classes_on_use'
# gem 'simple_form', '>= 3.0.0.rc'
gem 'slim'
# gem 'slim-rails'
gem 'therubyracer', platform: :ruby
# gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'twitter-bootswatch-rails', '~> 3.0.0'
gem 'twitter-bootswatch-rails-fontawesome', '~> 4.0'
gem 'twitter-bootswatch-rails-helpers'

gem 'mongoid', git: 'git://github.com/mongoid/mongoid.git'

gem 'gemnasium'
gem 'coveralls', require: false

group :development do
  gem 'guard'
  gem 'spork', '~> 1.0rc'
  gem 'guard-spork'
  gem 'guard-rspec', require: false
  gem 'haml-rails'
  gem 'haml2slim'
  gem 'html2haml', '2.0.0.beta.1'
  gem 'hub', require: nil
  gem 'quiet_assets'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'mailcatcher'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :production do
  gem 'unicorn'
  gem 'rails_12factor'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'mongoid-rspec', '>= 1.6.0', github: 'evansagge/mongoid-rspec'
  gem 'timecop'
end

