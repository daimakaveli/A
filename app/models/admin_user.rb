class AdminUser < ActiveRecord::Base
	#To configure a different table name
	#set_table_name("admin_users") #table names are plural
	
	has_and_belongs_to_many :pages
	has_many :section_edits
	#traversing a rich association
	has_many :sections, :through => :section_edits
end
