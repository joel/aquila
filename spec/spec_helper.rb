require File.expand_path('../../config/environment', __FILE__)

require 'rubygems'

ENV['RAILS_ENV'] = 'test'

# Loading more in this block will cause your tests to run faster. However,
# if you change any configuration or code from libraries loaded here, you'll
# need to restart spork for it take effect.

require 'rspec/rails'
require 'timecop'
require 'coveralls'

# require 'capybara/rails'
# require 'capybara/rspec'
require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist # :webkit_debug # For js true option
# Capybara.register_driver :rack_test
Capybara.current_driver = :rack_test # :selenium
# Capybara.current_driver = :poltergeist

# Capybara.register_driver :selenium_chrome do |app|
#   Capybara::Selenium::Driver.new(app, browser: :chrome)
# end
# Capybara.current_driver = :selenium_chrome
# Capybara.asset_host = 'http://lvh.me:3000'
# Capybara.app_host = 'http://lvh.me:3000'
# Capybara.asset_host = 'http://www.example.com'
# Capybara.app_host = 'http://www.example.com'
# Capybara.asset_host = 'http://www.example.org'
# Capybara.app_host = 'http://www.example.org'
# Capybara.default_host = "http://example.org"
# Capybara.run_server = true
Capybara.default_wait_time = 5

Coveralls.wear!
# CodeClimate::TestReporter.start

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join('app/lib/**/*.rb')].each { |f| require f }
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.include Devise::TestHelpers, type: :controller
  config.include Features::SessionHelpers, type: :feature

  # config.include(EmailSpec::Helpers)
  # config.include(EmailSpec::Matchers)

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  # config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false
  config.run_all_when_everything_filtered = true
  config.infer_spec_type_from_file_location!
  # config.raise_errors_for_deprecations!

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
