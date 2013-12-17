class User
  include Mongoid::Document
  include Mongoid::Timestamps
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable
  devise :confirmable, :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email,              type: String, default: ''
  field :encrypted_password, type: String, default: ''

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  field :confirmation_token,   type: String
  field :confirmed_at,         type: Time
  field :confirmation_sent_at, type: Time
  field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time

  ## Token authenticatable
  field :authentication_token, type: String

  field :invitation_token, type: String
  field :invitation_created_at, type: Time
  field :invitation_sent_at, type: Time
  field :invitation_accepted_at, type: Time
  field :invitation_limit, type: Integer

  index( {invitation_token: 1}, {:background => true} )
  index( {invitation_by_id: 1}, {:background => true} )

  ## Extra Fields
  field :name, type: String, default: ''
  field :theme, type: String, default: 'readable'
  field :locale, type: String, default: 'en'
  

  belongs_to :vault
  validates :vault, presence: true
  validates_associated :vault
  accepts_nested_attributes_for :vault

  before_destroy :protect_last_user

  private

  def protect_last_user
    raise I18n.t('model.user.destroy') if self.vault.users.count < 2
  end

end
