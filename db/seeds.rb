Question.create!([
  {quiz_id: 3, query: "What is a ray?", correct_answer: "A line with one endpoint and one end going on infinitely", user_answer: "", author: "2", wrong_answer_1: "A dot with no dimensions", wrong_answer_2: "A line with two endpoints", wrong_answer_3: "A pineapple", answered: nil}
])
Quiz.create!([
  {chapter_number: 1, chapter_name: "Introduction to Geometry", number_of_questions: 5, user_id: 2, score: nil, number_answered: 0, completed: nil, correct_questions: 0}
])
User.create!([
  {name: "Tobe", email: "tobochi2003@gmail.com", bio: "Coder, Swimmer, Pianist, Maker of this Site", pic: "http://e08595.medialib.glogster.com/media/e4/e495ca8daec7b27c8e5bdee60171b38631b71882200a8a29be167ff88caeb122/735909d4517dd536d0375ab09d8a6b19-png.png", password_digest: "$2a$10$JG.gtN6IkgAWtpStop6LReYS1bu79Hlxp/8JondHSrYTlGotjnbSu"},