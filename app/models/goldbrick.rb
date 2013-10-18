class Goldbrick
  include Mongoid::Document
  field :name, type: String
  field :login, type: String
  field :password, type: String
  field :content, type: String

  belongs_to :vault

end
