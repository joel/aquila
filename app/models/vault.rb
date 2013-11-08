class Vault
  include Mongoid::Document
  include Mongoid::Timestamps
  field :subdomain, type: String

  has_many :goldbricks, dependent: :destroy
  has_many :users

  validates :subdomain, presence: true
  validates_uniqueness_of :subdomain, case_sensitive: true, allow_blank: false
  validates_format_of :subdomain, with: /^[a-z0-9_]+$/, message: 'must be lowercase alphanumerics only', multiline: true
  validates_length_of :subdomain, maximum: 32, message: 'exceeds maximum of 32 characters'
  validates_exclusion_of :subdomain, in: ['www', 'mail', 'ftp'], message: 'is not available'

  def self.current_id=(id)
    Thread.current[:vault_id] = id
  end

  def self.current_id
    Thread.current[:vault_id]
  end
end