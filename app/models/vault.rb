class Vault
  include Mongoid::Document
  include Mongoid::Timestamps
  field :subdomain, type: String

  has_many :goldbricks, dependent: :destroy
  has_many :users

  validates :subdomain, presence: true
  validates_uniqueness_of :subdomain, case_sensitive: true, allow_blank: false
  validates_format_of :subdomain, with: /^[a-z0-9-]+$/,
    message: I18n.t('model.vault.validation.subdomain.format'), multiline: true
  validates_length_of :subdomain, maximum: 32
  validates_exclusion_of :subdomain, in: ['www', 'mail', 'ftp']

  def self.current_id=(id)
    Thread.current[:vault_id] = id
  end

  def self.current_id
    Thread.current[:vault_id]
  end
end