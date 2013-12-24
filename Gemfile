source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.0.0'
gem 'rails', '4.0.1'

# Use sqlite3 as the database for Active Record

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'therubyracer', platform: :ruby
gem 'gon'
gem 'momentjs-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
gem 'slim'

  # bundle exec rake doc:rails generates the API under doc/api.

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'devise'
gem 'devise_invitable'
gem 'devise-i18n'
gem 'devise-i18n-views'

gem 'rails-i18n'
gem 'i18n-language-translations'

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
# gem 'simple_form', '~>  3.0.0.rc'

# gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'twitter-bootswatch-rails'
gem 'twitter-bootswatch-rails-fontawesome'
gem 'twitter-bootswatch-rails-helpers'

gem 'mongoid', git: 'git://github.com/mongoid/mongoid.git'
# gem 'mongoid', '~> 4.0.0.alpha1'

# group :development, :staging do
#   gem 'i18n-one_sky'
# end

group :development do
  # gem 'slim-rails'
  gem 'guard'
  gem 'spork'
  gem 'guard-spork'
  gem 'guard-rspec', require: false
  gem 'haml-rails'
  gem 'haml2slim'
  gem 'html2haml'
  gem 'hub', require: nil
  gem 'quiet_assets'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  # mailcatcher 0.5.12 May 30, 2013 (121 KB)
  # mailcatcher (~>  0.5.12) ruby depends on
  #   activesupport (~> 3.0) ruby
  # gem 'mailcatcher', git: 'git@github.com:sj26/mailcatcher.git' Travis can't grab code :
  # Fetching git@github.com:sj26/mailcatcher.git
  # The authenticity of host 'github.com (192.30.252.130)' can't be established.
  # RSA key fingerprint is 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48.
  # Are you sure you want to continue connecting (yes/no)?
  # gem 'mailcatcher', '~> 0.5.12' # Incompatible with Rails 4

  # localeapp
  # gem 'rspec', '>= 2.4.0'
  # gem 'bundler'
  # gem 'jeweler', '> 1.6.4'
  # gem 'i18n-spec'
  # gem 'localeapp'
end

group :development, :test do
  gem 'gemnasium'
  gem 'coveralls', require: false
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :production do
  # gem 'unicorn'
  # gem 'thin'
  gem 'puma'
  gem 'rails_12factor'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'mongoid-rspec', github: 'evansagge/mongoid-rspec'
  gem 'timecop'
  gem 'i18n-spec'
end

