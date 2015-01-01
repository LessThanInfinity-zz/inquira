class CreateQuestionsTopics < ActiveRecord::Migration
  def change
    create_table :questions_topics, id: false do |t|
    	t.belongs_to :question, index: true
    	t.belongs_to :topic, index: true
    end
  end
end
