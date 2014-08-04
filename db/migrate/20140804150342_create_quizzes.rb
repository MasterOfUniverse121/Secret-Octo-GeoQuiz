class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :chapter_number
      t.string :chapter_name
      t.integer :number_of_questions
      t.integer :user_id
      t.string :score
      t.integer :number_answered
      t.boolean :completed

      t.timestamps
    end
  end
end
