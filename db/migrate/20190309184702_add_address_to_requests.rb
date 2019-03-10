class AddAddressToRequests < ActiveRecord::Migration[5.2]
  def change
      add_column :requests, :address, :string
  end
end
