# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   mayor.create(name: 'Emanuel', city: cities.first)
require "pry"
require 'csv'


Statistic.delete_all if Statistic.count >= 1
Victim.delete_all if Victim.count >= 1

# lone gunman statistics
stats_file = Rails.root.join('public','stats.csv')
stats_headers = Statistic.column_names
stats_headers.shift

CSV.foreach(stats_file, col_sep: ",") do |row|
   Statistic.create(Hash[stats_headers.zip row])
end

# victim count Fri, 14 Dec 2012, - Tue, 31 Dec 2013,
victims_file = Rails.root.join('public','victims.csv')
victims_headers = Victim.column_names
victims_headers.shift

CSV.foreach(victims_file, col_sep: ",") do |row|
   Victim.create(Hash[victims_headers.zip row])
end
