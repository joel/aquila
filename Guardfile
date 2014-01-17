#! ruby

guard 'rspec',
  cmd: 'zeus test spec',
  spec_paths: ['spec'],
  failed_mode: :keep,
  all_after_pass: true,
  all_on_start: true,
  notification: true,
  run_all: { cmd: 'zeus rspec spec', message: 'running all specs' }  do

  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch('spec/spec_helper.rb')                        { "spec" }
  watch(%r{^lib/(.+)\.rb$})                           { "spec" }
  watch(%r{^(app/)?lib/(.+)\.rb$})                    { "spec" }

  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }

  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/fixtures/(.+)/.*\.xml$})             { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/models/.*/(.+)_helper\.rb$})          { |m| "spec/#{m[1]}_spec.rb" }

  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| "spec/routing/#{m[1]}_routing_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| "spec/features/#{m[1]}_spec.rb" }

  watch(%r{^app/views/(.+)/.*\.(erb|slim|rabl)$})     { |m| ["spec/controllers", "spec/requests/#{m[1]}_spec.rb"] }
end

guard :teaspoon do
  # Implementation files
  watch(%r{app/assets/javascripts/(.+).js}) { |m| "#{m[1]}_spec" }

  # Specs / Helpers
  watch(%r{spec/javascripts/(.*)})
end
