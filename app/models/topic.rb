class Topic < ActiveRecord::Base
	validates :title, uniqueness: true, presence: true

	has_many :taggings, dependent: :destroy
	has_many :questions, through: :taggings

  def to_s
		title
  end

end
