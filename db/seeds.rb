# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#======= Status =======

Status.destroy_all
Status.create(id: 0, name: 'INACTIVE')
Status.create(id: 1, name: 'ACTIVE')


#======= User Type =======

UserType.destroy_all
UserType.create(id: 0, name: 'Super User')
UserType.create(id: 1, name: 'Regular User')


#======= Role =======

Role.destroy_all
Role.create(id: 0, name: 'Entrepreneur', status_id: 1)
Role.create(id: 1, name: 'Employee', status_id: 1)
Role.create(id: 2, name: 'Stakeholders', status_id: 1)


#======= Statement Type =======

StatementType.destroy_all
StatementType.create(
	id: 0, 
	name: 'Balanced Sheet',
	created_at: DateTime.now,
	updated_at: DateTime.now)
StatementType.create(
	id: 1,
	name: 'Income Statement',
	created_at: DateTime.now,
	updated_at: DateTime.now)
StatementType.create(
	id: 2,
	name: 'Cashflow Statement',
	created_at: DateTime.now,
	updated_at: DateTime.now)

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


#======= Ledger Type =======

LedgerType.destroy_all
LedgerType.create(
	id: 0,
	name: 'asset',
	created_at: DateTime.now,
	updated_at: DateTime.now)

LedgerType.create(
  id: 1,
  name: 'liability',
  created_at: DateTime.now,
  updated_at: DateTime.now)

LedgerType.create(
  id: 2,
  name: 'equity',
  created_at: DateTime.now,
  updated_at: DateTime.now)

LedgerType.create(
  id: 3,
  name: 'expense',
  created_at: DateTime.now,
  updated_at: DateTime.now)

LedgerType.create(
  id: 4,
  name: 'revenue',
  created_at: DateTime.now,
  updated_at: DateTime.now)


#======= Account =======

#----- Asset -----

Account.create(
	code: '10000',
	name: 'Assets',
	created_at: DateTime.now,
	updated_at: DateTime.now)

Account.create(
  code: '11000',
  name: 'Current Assets',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '12000',
  name: 'Non-current Assets',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '13000',
  name: 'Deferred Assets',
  created_at: DateTime.now,
  updated_at: DateTime.now)


#----- Liability -----

Account.create(
  code: '20000',
  name: 'Liabilities',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '21000',
  name: 'Current Liabilities',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '22000',
  name: 'Non-current Liabilities',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '23000',
  name: 'Reserves under special laws',
  created_at: DateTime.now,
  updated_at: DateTime.now)


#----- Equity -----

Account.create(
  code: '30000',
  name: 'Equity',
  created_at: DateTime.now,
  updated_at: DateTime.now)


#----- Expense -----

Account.create(
  code: '40000',
  name: 'Expenses',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '41000',
  name: 'Cost of Goods Sold',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '42000',
  name: 'Operating Expenses',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '42100',
  name: 'Selling Expenses',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '42200',
  name: 'Administrative Expenses',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '43000',
  name: 'Non-Operating Expenses',
  created_at: DateTime.now,
  updated_at: DateTime.now)


#----- Revenue -----

Account.create(
  code: '50000',
  name: 'Revenue',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '51000',
  name: 'Sales Revenue',
  created_at: DateTime.now,
  updated_at: DateTime.now)

Account.create(
  code: '52000',
  name: 'Non-Operating Revenues',
  created_at: DateTime.now,
  updated_at: DateTime.now)


#======= Dummy Data =======

#----- Organization -----

Organization.destroy_all

Organization.create(
	name: 'Dummy1',
	status_id: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now)

Organization.create(
	name: 'Dummy2',
	status_id: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now)

Organization.create(
  name: 'Dummy3',
  status_id: 1,
  created_at: DateTime.now,
  updated_at: DateTime.now)
