require 'spec_helper'

describe Notifier do
  let(:to) { 'john@doe.com' }
  # include Rails.application.routes.url_helpers

  before do
    @email = Notifier.test_mail(to)
  end

  it 'should be set to be delivered to the email passed in' do
    @email.should deliver_to to
  end

  it 'should be set to be delivered from the email passed in' do
    @email.should deliver_from ENV['APP_MAILER_FROM']
  end

  it 'should contain the user\'s message in the mail body' do
    @email.should have_body_text(/VaultyPass Test Mail/)
  end

  # it 'should contain a link to the confirmation link' do
  #   @email.should have_body_text(/#{confirm_account_url}/)
  # end

  context 'out of time' do
    before do
      Timecop.freeze Time.now
      @email = Notifier.test_mail(to)
    end
    it 'should have the correct subject' do
      @email.should have_subject "[TEST] [VaultyPass] Test Mail #{Time.now.to_s(:number)}"
    end
  end

end
