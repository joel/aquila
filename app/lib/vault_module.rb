# include VaultModule
module VaultModule
  extend ActiveSupport::Concern

  included do
    default_scope { where(vault_id: Vault.current_id) }
  end
end