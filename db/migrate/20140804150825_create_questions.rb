class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.string :query
      t.string :correct_answer
      t.string :user_answer
      t.string :author
      t.string :wrong_answer_1
      t.string :wrong_answer_2
      t.string :wrong_answer_3
      t.boolean :answered

      t.timestamps
    end
  end
end
