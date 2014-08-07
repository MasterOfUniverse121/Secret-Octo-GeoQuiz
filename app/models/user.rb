class User < ActiveRecord::Base
  has_secure_password
	has_many :quizzes
	
	validates_presence_of :name,
	:message => "cannot be empty."
	validates_presence_of :password,
	:message => "cannot be empty."
	validates_presence_of :password_confirmation,
	:message => "cannot be empty."
end
