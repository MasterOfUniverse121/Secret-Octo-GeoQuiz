class User < ActiveRecord::Base
  has_secure_password
	has_many :quizzes
	
	validates_presence_of :name,
	:message => "cannot be empty."
end
