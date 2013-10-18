class Vault
  include Mongoid::Document
  field :title, type: String
  field :subdomain, type: String

  def self.current_id=(id)
    Thread.current[:vault_id] = id
  end

  def self.current_id
    Thread.current[:vault_id]
  end
end