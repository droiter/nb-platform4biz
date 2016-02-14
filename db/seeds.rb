# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Status.destroy_all
Status.create(:id => 0, :name => 'INACTIVE')
Status.create(:id => 1, :name => 'ACTIVE')

UserType.destroy_all
UserType.create(:id => 0, :name => 'Super User')
UserType.create(:id => 1, :name => 'Regular User')
