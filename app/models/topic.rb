class Topic < ActiveRecord::Base
	validates :title, uniqueness: true, presence: true
end
