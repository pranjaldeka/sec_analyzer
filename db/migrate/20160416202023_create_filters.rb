class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
    	t.integer :f_id
    	t.string :f_name
        t.timestamps null: false
    end
  end
end
