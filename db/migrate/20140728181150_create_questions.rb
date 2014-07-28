class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.string :answer
      t.string :o1
      t.string :o2
      t.string :o3
      t.string :o4
      t.integer :num_correct
      t.integer :attempts

      t.timestamps
    end
  end
end
