class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
		t.integer "page_id" # can also use: t.references :page
		t.string "name"
		t.integer "position"
		t.boolean "visible", :default => false
		t.string "content_type"
		t.text "content" #string holds 255char whereas text is unlimited
		t.timestamps
    end
	add_index("sections","page_id") #always add_index on foreign key
  end
end
