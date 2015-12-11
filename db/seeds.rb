# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   mayor.create(name: 'Emanuel', city: cities.first)
require "pry"

filename = '/Users/AnitaGrowsoon/Classwork/Coursework/Portfolio/gun_violence/public/data.csv'
# binding.pry
# CSV.parse(File.read(filename)) do |row|
#       binding.pry
#       Statistic.create(
#          case: row[0],
#          location: row[1],
#          date: Date.strptime(row[2], '%m/%d/%Y'),
#          year: Integer(row[3]),
#          summary: row[4],
#          fatalities: Integer(row[5]),
#          injured: Integer(row[6]),
#          total_victims: Integer(row[7]),
#          venue: row[8],
#          warning_Signs: row[9],
#          mental_Health: row[10],
#          weapons_obtained_legally: row[11],
#          where_obtained: row[12],
#          type_of_weapons: row[13],
#          weapon_details: row[14],
#          race: row[15],
#          gender: row[16],
#          sources: row[17],
#          mental_Health_Sources: row[18],
#          latitude: Float(row[19]) if row[19] != nil,
#          longitude: Float(row[20]) if row[19] != nil,
#          type: row[21]
#          )
# end

# def parseInfo(data,parseTo) do
#    data = "Not Given" if data.class == NilClass
#
#
# end


# require 'csv'
#
# datafile = Rails.root + 'public/gun_data.csv'
#
# CSV.foreach(datafile, headers: true) do |row|
#
#   Data.find_or_create_by({case: row[0]}) do |column|
#    #  column.address = row[0]
#    #  column.city =  row[1]
#    #  column.state =  row[2]
#    #  column.zip =  row[3]
#    #  column.name =  row[4]
#    column.case = row[0],
#    column.location = row[1],
#    column.date = Date.strptime(row[2], '%m/%d/%Y'),
#    column.year = Integer(row[3]),
#    column.summary = row[4],
#    column.fatalities = Integer(row[5]),
#    column.injured = Integer(row[6]),
#    column.total_victims = Integer(row[7]),
#    column.venue = row[8],
#    column.warning_Signs = row[9],
#    column.mental_Health = row[10],
#    column.weapons_obtained_legally = row[11],
#    column.where_obtained = row[12],
#    column.type_of_weapons = row[13],
#    column.weapon_details = row[14],
#    column.race = row[15],
#    column.gender = row[16],
#    column.sources = row[17],
#    column.mental_Health_Sources = row[18],
#    column.latitude = Float(row[19]) if row[19] != nil,
#    column.longitude = Float(row[20]) if row[19] != nil,
#    column.type = row[21]
#   end
#
# end


require 'csv'

headers = Statistic.column_names
headers.shift

CSV.foreach(filename, col_sep: ",") do |row|
   binding.pry
   Statistic.create(Hash[headers.zip row])
end
