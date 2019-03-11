class Request < ApplicationRecord
  belongs_to :user
  has_many :conversations

  # validates :user_id, uniqueness: true, if: :status_unfulfilled?
  #
  # def status_unfulfilled?
  #   status == "Unfulfilled"
  #   errors.add(:user_id, "has already an unfulfilled request")
  # end

  validates_presence_of :title, :description, :latitude, :longitude
  validates :latitude , numericality: { greater_than_or_equal_to:  -90, less_than_or_equal_to:  90 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
  validates_length_of :description, :maximum => 300
  validates_length_of :title, :maximum => 50

  def volunteered_by?(user)
    conversations.where(sender_id: user.id).any?
  end
end
