class CreateQuestionUpvotes < ActiveRecord::Migration
  def change
    create_table :question_upvotes do |t|
    	t.integer	:question_id, 	:null => false
    	t.integer :user_id, 			:null => false

      t.timestamps
    end
  end
end
