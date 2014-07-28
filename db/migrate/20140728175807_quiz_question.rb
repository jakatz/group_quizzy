class QuizQuestion < ActiveRecord::Migration
  def change
    create_table :quiz_questions do |t|
      t.references :quiz
      t.references :question
    end
  end
end
