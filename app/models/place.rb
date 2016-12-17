class Place < ActiveRecord::Base
	belongs_to :category
	belongs_to :user

	has_many :reviews
	has_many :images

	validates :title, presence: true, length: {maximum: 50 }
	validates :description, presence: true, length: { maximum: 250 }
	validates :user_id, presence: true
	validates :category_id, presence: true
	validates :eula, acceptance: true
end
