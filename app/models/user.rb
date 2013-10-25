require 'bcrypt'

class User
	include Mongoid::Document

	attr_accessor :password, :password_confirmation

	field :email, type: String
	field :salt, type: String
	field :hashed_password, type: String

	#Before you create a user, call the hash_password
	before_save :hash_password
	validates :email, presence: true
	validates :email, uniqueness: { case_sensitive: false }
	validates :password, confirmation: true

	def authenticate(password)
		self.hashed_password == BCrypt::Engine.hash_secret(password, self.salt)
	end

	private
	def hash_password
		if password.present?
			self.salt = BCrypt::Engine.generate_salt
			self.hashed_password = BCrypt::Engine.hash_secret(password, self.salt)
			password = password_confirmation = nil
		end
	end


	# def password
	# 	@password = Password.new(hashed_password)
	# end

	# def password=(new_password)
	# 	@password = Password.create(new_password)
	# 	self.password_hash = @password
	# end

end