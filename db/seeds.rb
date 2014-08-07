Question.create!([
  {quiz_id: 3, query: "What is a ray?", correct_answer: "A line with one endpoint and one end going on infinitely", user_answer: "", author: "2", wrong_answer_1: "A dot with no dimensions", wrong_answer_2: "A line with two endpoints", wrong_answer_3: "A pineapple", answered: nil}
])
Quiz.create!([
  {chapter_number: 1, chapter_name: "Introduction to Geometry", number_of_questions: 5, user_id: 2, score: nil, number_answered: nil, completed: nil, correct_questions: nil}
])

