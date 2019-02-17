class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :longitude
      t.string :latitude
      t.string :status

      t.timestamps
    end
  end
end
