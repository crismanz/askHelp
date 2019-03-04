class AddVolunteerToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :volunteer, :string
  end
end
