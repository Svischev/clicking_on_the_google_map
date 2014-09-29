class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address
      t.decimal :coordinate_lat
      t.decimal :coordinate_lng

      t.timestamps
    end
  end
end
