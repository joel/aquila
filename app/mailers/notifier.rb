class Notifier < ActionMailer::Base

  default from:        ENV['APP_MAILER_FROM'],
          return_path: ENV['APP_MAILER_RETURN_PATH'],
          mime_version: '1.0',
          charset:      'UTF-8',
          content_type: 'text/plain',
          parts_order: [ 'text/plain', 'text/enriched', 'text/html' ]

  def test_mail to
    mail to: to, subject: subject("[VaultyPass] Test Mail #{Time.now.to_s(:number)}")
  end

  private

  def subject content
    Rails.env.production? ? content : "[#{Rails.env.upcase}] #{content}"
  end

end
