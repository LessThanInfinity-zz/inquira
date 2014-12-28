class CreateAnswerUpvotes < ActiveRecord::Migration
  def change
    create_table :answer_upvotes do |t|
    	t.integer :answer_id, :null => false
    	t.integer :user_id, 	:null => false
      t.timestamps
    end
  end
end
