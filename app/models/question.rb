class Question < ActiveRecord::Base
	belongs_to :quiz
	validates_presence_of :query,
	:message => "Question cannot be empty."
	validates_presence_of :correct_answer,
	:message => "Correct Answer cannot be empty."
	validates_presence_of :wrong_answer_1,
	:message => "Wrong Answer 1 cannot be empty."
	validates_presence_of :wrong_answer_2,
	:message => "Wrong Answer 2 cannot be empty."
	validates_presence_of :wrong_answer_3,
	:message => "Wrong Answer 3 cannot be empty."
end
