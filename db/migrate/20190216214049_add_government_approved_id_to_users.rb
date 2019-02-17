class AddGovernmentApprovedIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :government_approvedID, :string
  end
end
