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

  task :restore do |t, args|
    cmd = "mongorestore -h paulo.mongohq.com:10031 " \
      "-d app18709586 " \
      "-u heroku " \
      "-p #{ENV['MONGOHQ_PASSWORD']} " \
      "#{file}"
    system cmd
  end

end