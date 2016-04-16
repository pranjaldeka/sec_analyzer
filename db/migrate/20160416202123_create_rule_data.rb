class CreateRuleData < ActiveRecord::Migration
  def change
    create_table :rule_data do |t|
    	t.integer :file_id
    	t.integer :r_id
    	t.integer :offset
    	t.string :value
        t.timestamps null: false
    end
  end
end
