namespace :mail do

  namespace :test do

    desc <<-DESC
      rake mail:test:send['me@example.com']
    DESC
    task :send, :to do |t, args|
      # args.each { |k, v| puts "#{k} => #{v}" }
      Rake::Task[:environment].invoke
      unless args.to
        puts 'Please specify at least one recipient.'
        exit 1
      end
      mail = Notifier.test_mail args.to
      puts "body = #{mail.body}"
      mail.deliver
    end
  end
end
