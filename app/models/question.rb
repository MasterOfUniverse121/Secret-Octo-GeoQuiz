class Question < ActiveRecord::Base
	belongs_to :quiz
	fivos = ['5', '10', '15', '20', '25', '30', '35', '40', '45', '50', '55', '60', '65']
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
