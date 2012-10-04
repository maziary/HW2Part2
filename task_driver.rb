#File: ar_test.rb
require "active_record"

#Adapter for the SQLite3
ActiveRecord::Base::establish_connection(:adapter => "sqlite3" ,
	:database => "taskdb.sqlite" )
	
#Define database schema , and create database "people"
class TaskTableScript < ActiveRecord::Migration
def self.up
create_table :task do |t|
	t.datetime :due_date
	t.boolean :is_complete
end
end

def self.down
drop_table :task
end
end

#Create the table that will be used in the database
TaskTableScript.up

class Task < ActiveRecord::Base
end