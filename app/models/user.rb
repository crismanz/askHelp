class User < ApplicationRecord
  mount_uploader :government_approvedID, GovernmentApprovedIdUploader

  validates_presence_of :government_approvedID
  validates_integrity_of :government_approvedID
  validates_processing_of :government_approvedID
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  before_save { self.email = email.downcase }

  has_many :request
  has_many :conversations
  
end
