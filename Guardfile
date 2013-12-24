#! ruby

guard 'spork', :rspec_env => { 'RAILS_ENV' => 'test' },
  :wait => 40, # Seconds to wait for the server to starts, default: 20
  :cucumber => false,
  :rspec => true,
  :test_unit => false,
  :bundler => true,
  :rspec_port => 8989 do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.+\.rb$})
  watch(%r{^config/initializers/.+\.rb$})
  watch('spec/spec_helper.rb')
  watch(%r{^lib/(.+)\.rb$})
  watch(%r{^config/locales/(.+)\.yml$})
  watch(%r{^spec/factories/(.+)\.rb$})
  # watch(%r{^app/models/(.+)\.rb$})
  watch(%r{^app/lib/(.+)\.rb$})
end

guard 'rspec',
  :cmd => 'rspec --require support/formatters/txmt_formatter --color --format TxmtFormatter --fail-fast --drb',
  :notification => true, # don't display Growl (or Libnotify) notification after the specs are done running, default: true
  :all_after_pass => true, # don't run all specs after changed specs pass, default: true
  :all_on_start => true,   # don't run all the specs at startup, default: true
  :keep_failed => false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/fixtures/(.+)/.*\.xml$})             { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb$})                           { "spec" }
  watch(%r{^app/models/.*/(.+)_helper\.rb$})          { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^(app/)?lib/(.+)\.rb$})                    { "spec" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch('spec/spec_helper.rb')                        { "spec" }
  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }
  watch(%r{^app/views/(.+)/.*\.(erb|slim|rabl)$})     { |m| ["spec/controllers", "spec/requests/#{m[1]}_spec.rb"] }
end

guard :teaspoon do
  # Implementation files
  watch(%r{app/assets/javascripts/(.+).js}) { |m| "#{m[1]}_spec" }

  # Specs / Helpers
  watch(%r{spec/javascripts/(.*)})
end
