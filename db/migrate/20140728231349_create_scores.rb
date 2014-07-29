class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :high_score

      t.timestamps
    end
  end
end
