class Vault
  include Mongoid::Document
  include Mongoid::Timestamps
  field :subdomain, type: String

  has_many :goldbricks, dependent: :destroy
  has_many :users

  validates :subdomain, presence: true
  validates_uniqueness_of :subdomain, case_sensitive: true, allow_blank: false

  def self.current_id=(id)
    Thread.current[:vault_id] = id
  end

  def self.current_id
    Thread.current[:vault_id]
  end
end