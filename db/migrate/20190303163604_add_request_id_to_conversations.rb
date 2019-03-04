class AddRequestIdToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :request_id, :integer
  end
end
