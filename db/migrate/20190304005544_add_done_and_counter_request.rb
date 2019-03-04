class AddDoneAndCounterRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :done, :integer, default: 0
    add_column :requests, :counter, :integer, default: 0
  end
end
