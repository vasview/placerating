class User < ActiveRecord::Base
	belongs_to :role

	has_many :places
	has_many :reviews
	has_many :images
end
