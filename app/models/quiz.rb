class Quiz < ActiveRecord::Base
	has_many :questions
	belongs_to :user
		
	NUMBERS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13']
	validates_inclusion_of :number,
	:in => NUMBERS,
	:message => "%{value} is not allowed."
	TITLESTUFFS = ['Introduction to Geometry' ,
	'Basic Concepts and Proofs' ,
	'Congruent Triangles' ,
	'Lines in the Plane' ,
	'Parallel Lines and Related Figures' ,
	'Lines and Planes in Space' ,
	'Polygons' ,
	'Similar Polygons' ,
	'The Pythagorean Theorem' ,
	'Circles' ,
	'Area' ,
	'Surface Area and Volume' ,
	'Coordinate Geometry Extended']
	validates_inclusion_of :name,
	:in => TITLESTUFFS,
	:message => "%{value} is not allowed."
	validates_presence_of :number_of_questions,
	:message => "Number of Questions cannot be empty."
end
