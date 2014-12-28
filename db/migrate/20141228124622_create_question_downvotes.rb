class CreateQuestionDownvotes < ActiveRecord::Migration
  def change
    create_table :question_downvotes do |t|
    	t.integer :question_id, 		:null => false
    	t.integer :user_id,					:null => false

      t.timestamps
    end
  end
end
