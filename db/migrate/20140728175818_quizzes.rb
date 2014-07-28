class Quizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name
      t.integer :high_score
    end
  end
end
