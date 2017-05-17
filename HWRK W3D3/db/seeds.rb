# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


House.create :address => "egbwig"
House.create :address => "wrqwrq"
House.create :address => "hqerh"
House.create :address => "qwtet"
House.create :address => "ggGEegEG"


Person.create :name => "Bill", :house_id => 1
Person.create :name => "etwe", :house_id => 1
Person.create :name => "rqwrwq", :house_id => 2
Person.create :name => "Bill", :house_id => 2
