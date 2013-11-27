if Rails.env.production?
  ActionMailer::Base.smtp_settings = {
    :port      => '587',
    :address   => 'smtp.mandrillapp.com',
    :user_name => ENV['MANDRILL_USERNAME'],
    :password  => ENV['MANDRILL_APIKEY'],
    :domain    => 'heroku.com',
    :authentication => :plain
  }
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.default_url_options = { host: ENV['BASE_URL'] }
elsif Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base..smtp_settings  = { address: 'localhost', port: 1025 }
  ActionMailer::Base.default_url_options = { host: ENV['BASE_URL'] }
elsif Rails.env.test?
  ActionMailer::Base.delivery_method = :test
end

# Sample of Sendgrid configuration

# ActionMailer::Base.smtp_settings = {
#   :address    => 'smtp.sendgrid.net',
#   :port       => '587',
#   :authentication => :plain,
#   :user_name    => ENV['SENDGRID_USERNAME'],
#   :password     => ENV['SENDGRID_PASSWORD'],
#   :domain     => 'heroku.com'
# }
