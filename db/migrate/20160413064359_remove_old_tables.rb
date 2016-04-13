class RemoveOldTables < ActiveRecord::Migration
  def up
 	  Customer.all.each do |c|
 		 Account.create(name: c.name, about: c.about)
 		end
 		
 		Employee.all.each do |e|
 			Account.create(name: e.name, email: e.email)
 		end
 	  
 	  if table_exists? :customers
 	  	drop_table :customers
 	  end
 	  
 	  if table_exists? :employees
 	  	drop_table :employees
 	  end
  end
  
  def down
		
	end
	  
end
