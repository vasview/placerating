class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	belongs_to :role

	has_many :places
	has_many :reviews
	has_many :images

	validates :name, presence: true, length: {maximum: 50}
end
