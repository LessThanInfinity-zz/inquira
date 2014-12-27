class Answer < ActiveRecord::Base
	embed :ids, include: true
	
	belongs_to :question


end
