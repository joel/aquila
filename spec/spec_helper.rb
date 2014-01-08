require File.expand_path('../../config/environment', __FILE__)

require 'rubygems'
require 'spork'

ENV['RAILS_ENV'] = 'test'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  require 'rspec/rails'
  require 'rspec/autorun'
  # require 'codeclimate-test-reporter'
  require 'coveralls'

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
    config.filter_run focused: true
    config.run_all_when_everything_filtered = true

    # Run specs in random order to surface order dependencies. If you find an
    # order dependency and want to debug it, you can fix the order by providing
    # the seed, which is printed after each run.
    #     --seed 1234
    config.order = 'random'
  end

end

Spork.each_run do
end
