class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.string :case
      t.string :location
      t.date :date
      t.integer :year
      t.string :summary
      t.integer :fatalities
      t.integer :injured
      t.integer :total_victims
      t.string :venue
      t.string :warning_signs
      t.string :mental_health
      t.string :weapons_obtained_legally
      t.string :where_obtained
      t.string :type_of_weapons
      t.string :weapon_details
      t.string :race
      t.string :gender
      t.string :sources
      t.string :mental_health_sources
      t.decimal :latitude
      t.decimal :longitude
      t.string :type
      t.timestamps null: false
    end
  end
end
