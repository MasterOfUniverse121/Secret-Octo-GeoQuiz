class User < ActiveRecord::Base
  has_secure_password
	has_many :quizzes
	validates_presence_of :name,
	:message => "Name cannot be empty."
	validates_presence_of :password,
	:message => "Password cannot be empty."
	validates_presence_of :password_confirmation,
	:message => "Password_confirmation cannot be empty."
end
