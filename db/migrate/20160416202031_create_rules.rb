class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
    	t.integer :r_id
    	t.string :r_name
    	t.integer :is_flag
        t.timestamps null: false
    end
  end
end
