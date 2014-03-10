class SectionEdit < ActiveRecord::Base
	#2 foreign keys -> 2 belongs_to
	belongs_to :editor, :class_name => "AdminUser", :foreign_key => 'admin_user_id'
	belongs_to :section

end
