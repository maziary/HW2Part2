#File: ar_test.rb
require "active_record"

#Adapter for the SQLite3
ActiveRecord::Base::establish_connection(:adapter => "sqlite3" ,
	:database => "testdb.sqlite" )
	
#Define database schema , and create database "people"
class PeopleTableScript < ActiveRecord::Migration
def self.up
create_table :people do |t|
	t.string :first_name
	t.string :last_name
end
end

def self.down
drop_table :people
end
end

#Create the table that will be used in the database
PeopleTableScript.up

class Person < ActiveRecord::Base
end