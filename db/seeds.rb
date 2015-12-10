# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   mayor.create(name: 'Emanuel', city: cities.first)
require "pry"

filename = '/Users/AnitaGrowsoon/Classwork/Coursework/Portfolio/gun_violence/public/gun_data.csv'

rawData = CSV.read(filename) do |row|
      binding.pry
      Statistic.create(
         case: row[0],
         location: row[1],
         date: Date.strptime(row[2], '%m/%d/%Y'),
         year: Integer(row[3]),
         summary: row[4],
         fatalities: Integer(row[5]),
         injured: Integer(row[6]),
         total_victims: Integer(row[7]),
         venue: row[8],
         warning_Signs: row[9],
         mental_Health: row[10],
         weapons_obtained_legally: row[11],
         where_obtained: row[12],
         type_of_weapons: row[13],
         weapon_details: row[14],
         race: row[15],
         gender: row[16],
         sources: row[17],
         mental_Health_Sources: row[18],
         latitude: Float(row[19]),
         longitude: Float(row[20]),
         type: row[21]
         )
end
