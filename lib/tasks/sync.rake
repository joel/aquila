namespace :sync do

  desc 'Synchronizes local database with production'
  task :local => :backup do
    file_name = "mongodump.#{Time.now.strftime('%Y%m%d')}"
    app_name = 'app18709586'
    cmd = "mongorestore -v -h localhost " \
      "--port 27017 " \
      "--db aquila_development " \
      "--drop tmp/#{file_name}/#{app_name}"
    system cmd
  end

  task :reload do |t, args|
    file_name = "mongodump.#{Time.now.strftime('%Y%m%d')}"
    app_name = 'app18709586'
    cmd = "mongorestore -v -h localhost " \
      "--port 27017 " \
      "--db aquila_development " \
      "--drop tmp/#{file_name}/#{app_name}"
    system cmd
  end

  task :backup do |t, args|
    file_name = "mongodump.#{Time.now.strftime('%Y%m%d')}"
    cmd = "mongodump -h paulo.mongohq.com:10031 " \
      "-d app18709586 -u heroku " \
      "-p #{ENV['MONGOHQ_PASSWORD']} " \
      "-o tmp/#{file_name}"
    system cmd
  end

  # rake sync:restore['tmp/mongodump.20131127/app18709586']
  task :restore, :file do |t, args|
    puts "keep fews secondes for considers your action, you are going to EREASE production database for restoring with your provided dump file, you are allright with this ? [Y,n]"

    if $stdin.gets.chomp == 'Y'
      cmd = "mongorestore -h #{ENV['MONGOHQ_URL']} " \
        "-d #{ENV['MONGOHQ_DATABASE']} " \
        "-u #{ENV['MONGOHQ_USERNAME']} " \
        "-p #{ENV['MONGOHQ_PASSWORD']} " \
        "#{args.file}"
      system cmd
    else
      puts "Ok bye bye"
    end
  end

  task :console do
    cmd = "mongo #{ENV['MONGOHQ_URL']}/#{ENV['MONGOHQ_DATABASE']} " \
      "-u #{ENV['MONGOHQ_USERNAME']} " \
      "-p #{ENV['MONGOHQ_PASSWORD']} "
    system cmd
  end

end
