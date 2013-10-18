class Vault
  include Mongoid::Document
  field :name, type: String
  field :subdomain, type: String

  has_many :goldbricks

  def self.current_id=(id)
    Thread.current[:vault_id] = id
  end

  def self.current_id
    Thread.current[:vault_id]
  end
end