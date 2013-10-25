module DeviseRegistrationsControllerDecorator
  extend ActiveSupport::Concern

  included do
    alias :devise_new :new
    def new; custom_new; end
  end

  def custom_new
    build_resource({vault_attributes: { subdomain: 'my-subdomain' }})
    respond_with self.resource
  end
end

Devise::RegistrationsController.send(:include, DeviseRegistrationsControllerDecorator)