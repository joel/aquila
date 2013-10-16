worker_processes 4

# This loads the application in the master process before forking
# worker processes
# Read more about it here:
# http://unicorn.bogomips.org/Unicorn/Configurator.html
preload_app true
timeout 30

before_fork do |server, worker|
end

after_fork do |server, worker|
end
