class CreateAntiRules < ActiveRecord::Migration
  def change
    create_table :anti_rules do |t|
    	t.integer :r1_id
    	t.integer :r2_id
        t.timestamps null: false
    end
  end
end
