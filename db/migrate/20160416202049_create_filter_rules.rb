class CreateFilterRules < ActiveRecord::Migration
  def change
    create_table :filter_rules do |t|
    	t.integer :f_id
    	t.string :r_ids
        t.timestamps null: false
    end
  end
end
