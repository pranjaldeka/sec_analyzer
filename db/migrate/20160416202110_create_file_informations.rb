class CreateFileInformations < ActiveRecord::Migration
  def change
    create_table :file_informations do |t|
    	t.integer :file_id
    	t.integer :c_id
    	t.integer :year
    	t.string :quarter
        t.timestamps null: false
    end
  end
end
