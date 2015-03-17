class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: {maximum: 20}
	validates :email, uniqueness: true, presence: true, length: {maximum: 50}

	has_secure_password
	validates :password, length: {minimum: 6}
end
