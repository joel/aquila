# spec/support/features/session_helpers.rb
module Features
  module SessionHelpers
    include Warden::Test::Helpers

    def sign_in user=nil
      @current_user ||= user || create(:user)
      Warden.test_mode!
      login_as @current_user, scope: :user
    end
  end
end
