class User < ApplicationRecord
  mount_uploader :government_approvedID, GovernmentApprovedIdUploader

  validates_presence_of :government_approvedID
  validates_integrity_of :government_approvedID
  validates_processing_of :government_approvedID
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  validates :first_name,  presence: true
  validates :last_name,  presence: true
  validates :email, presence: true,
  uniqueness: { case_sensitive: false }

  before_save { self.email = email.downcase }

  has_many :request_user_id, class_name: 'Conversation', foreign_key: 'request_user_id'
  has_many :request
  has_many :conversations
  has_many :messages
  has_many :volunteers

end
