class User < ActiveRecord::Base
	validates :first_name,
						:last_name,
						:email,
						:password, presence: true

	has_secure_password
end