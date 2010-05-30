class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.string :description
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.decimal :lat, :precision => 15
      t.decimal :long, :precision => 15

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
