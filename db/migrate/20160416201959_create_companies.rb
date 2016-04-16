class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
    	t.integer :c_id 
    	t.string :c_name
        t.timestamps null: false
    end
  end
end
