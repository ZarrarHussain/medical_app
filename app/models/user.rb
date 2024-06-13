class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, 
         :validatable,:authentication_keys => [:username]
  validates :username, presence: true, uniqueness: true

  has_one :doctor, dependent: :destroy
  has_one :patient, dependent: :destroy
  has_one :lab_staff, dependent: :destroy
  has_one :rider, dependent: :destroy

  accepts_nested_attributes_for :doctor, :patient, :lab_staff, :rider
  
attr_writer :login
validate :validate_username

def validate_username
  if User.where(email: username).exists?
    errors.add(:username, :invalid)
  end
end
def login
  @login || username || email
end

def self.find_for_database_authentication(warden_conditions)
  conditions = warden_conditions.dup
  if login = conditions.delete(:login)
    where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  elsif conditions.has_key?(:username) || conditions.has_key?(:email)
    where(conditions.to_h).first
  end
end

end
