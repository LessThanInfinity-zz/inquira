class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

    	t.string :title, 				:null => false
    	t.text :description,  	:null => false
    	t.integer :asker_id,  	:null => false
    	t.boolean :anonymous,  	:default => false

      t.timestamps
    end
  end
end
