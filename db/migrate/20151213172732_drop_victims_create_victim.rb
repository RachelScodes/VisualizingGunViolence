class DropVictimsCreateVictim < ActiveRecord::Migration
  def change
     drop_table(:victims)

     create_table :victims do |t|
      t.integer :victim_id
      t.date :date
      t.string :name
      t.string :gender
      t.integer :age
      t.integer :age_group
      t.string :city
      t.string :state
      t.decimal :latitude
      t.decimal :longitude
      t.string :sources
      t.timestamps null: false
   end
   
  end
end
