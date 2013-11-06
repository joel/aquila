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
end