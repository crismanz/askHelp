class AddVolunteerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :volunteer, :string
  end
end
