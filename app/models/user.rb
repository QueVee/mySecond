class User < ActiveRecord::Base
	has_many :items, dependent: :destroy
	has_one :second, class_name: "User",
									 foreign_key: "user_id"
									 dependent: :destroy
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: {maximum: 20}
	validates :email, uniqueness: true, presence: true, length: {maximum: 50}

	has_secure_password
	validates :password, length: {minimum: 6}, allow_blank: true
end
