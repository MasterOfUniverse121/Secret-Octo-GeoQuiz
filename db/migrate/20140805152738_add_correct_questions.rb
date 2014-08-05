class AddCorrectQuestions < ActiveRecord::Migration
  def change
		add_column :quizzes, :correct_questions, :integer
  end
end
