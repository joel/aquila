module DeviseInvitationsControllerDecorator
  extend ActiveSupport::Concern

  included do
    alias :devise_new :new
    def new; custom_new; end
  end

  def custom_new
    self.resource = resource_class.new({vault_id: current_user.vault.id})
    render :new
  end
end

Devise::InvitationsController.send(:include, DeviseInvitationsControllerDecorator)