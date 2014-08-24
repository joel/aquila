class Goldbrick
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :link, type: String
  field :login, type: String
  field :password, type: String
  field :content, type: String

  belongs_to :vault
  validates :vault, :login, presence: true
  validates_associated :vault

  # validates :name, presence: true
  # validates_uniqueness_of :name, case_sensitive: true, allow_blank: false
end
