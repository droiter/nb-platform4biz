# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Status.destroy_all
Status.create(id: 0, name: 'INACTIVE')
Status.create(id: 1, name: 'ACTIVE')

UserType.destroy_all
UserType.create(id: 0, name: 'Super User')
UserType.create(id: 1, name: 'Regular User')

Calendar.destroy_all
Calendar.create(
	id: 0, 
	calendar_type: '201601', 
	from: '2016-01-01', 
	to: '2016-01-31', 
	created_at: DateTime.now, 
	updated_at: DateTime.now)

Calendar.create(
  id: 1,
  calendar_type: '201602',
  from: '2016-02-01',
  to: '2016-02-29',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Calendar.create(
  id: 2,
  calendar_type: '201603',
  from: '2016-03-01',
  to: '2016-03-31',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Calendar.create(
  id: 3,
  calendar_type: '201604',
  from: '2016-04-01',
  to: '2016-04-30',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Calendar.create(
  id: 4,
  calendar_type: '201605',
  from: '2016-05-01',
  to: '2016-05-31',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Calendar.create(
  id: 5,
  calendar_type: '201606',
  from: '2016-06-01',
  to: '2016-06-30',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Calendar.create(
  id: 6,
  calendar_type: '201607',
  from: '2016-07-01',
  to: '2016-07-31',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Calendar.create(
  id: 7,
  calendar_type: '201608',
  from: '2016-08-01',
  to: '2016-08-31',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Calendar.create(
  id: 8,
  calendar_type: '201609',
  from: '2016-09-01',
  to: '2016-09-30',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Calendar.create(
  id: 9,
  calendar_type: '201610',
  from: '2016-10-01',
  to: '2016-10-30',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Calendar.create(
  id: 10,
  calendar_type: '201611',
  from: '2016-11-01',
  to: '2016-11-30',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Calendar.create(
  id: 11,
  calendar_type: '201612',
  from: '2016-12-01',
  to: '2016-12-31',
  created_at: DateTime.now,
  updated_at: DateTime.now)
