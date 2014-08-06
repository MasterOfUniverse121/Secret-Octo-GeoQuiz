class Quiz < ActiveRecord::Base
	has_many :questions
	belongs_to :user
		
	#	validate :chapter_number is lessthan or equal to CHAPTER_COUNT
	
	CHAPTER_COUNT = 13
	
	CHAPTER_NAMES = ['Introduction to Geometry' ,
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
	validates_inclusion_of :chapter_name,
	:in => CHAPTER_NAMES,
	:message => "%{value} is not allowed."
	validates_presence_of :number_of_questions,
	:message => "Number of Questions cannot be empty."
end
