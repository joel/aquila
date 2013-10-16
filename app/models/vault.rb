class Vault
  include Mongoid::Document
  field :title, type: String
  field :subdomain, type: String
end
