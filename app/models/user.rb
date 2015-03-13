class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 20}
	validates :email, uniqueness: true, presence: true, length: { maximum: 40}
end
