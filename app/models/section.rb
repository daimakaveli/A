class Section < ActiveRecord::Base

	belongs_to :page
	has_many :section_edits
	#traversing a rich association
	has_many :editors, :through => :section_edits, :class_name => "AdminUser"
end
