class Conversation < ActiveRecord::Base
  belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'User'
  has_many :messages, dependent: :destroy
  belongs_to :request, :foreign_key => :request_id, class_name: 'Request'
  belongs_to :request, counter_cache: true

  validates_uniqueness_of :sender_id, :scope => :recipient_id, :scope => :request_id
  scope :between, ->(sender_id, request_id) {where(sender_id: sender_id, request_id: request_id)}

  def unread_message_count(current_user)
    self.messages.where("user_id != ? AND read = ?", current_user.id, false).count
  end
end
