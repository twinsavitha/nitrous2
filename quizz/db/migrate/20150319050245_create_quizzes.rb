class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :optiona
      t.string :optionb
      t.string :optionc
      t.string :optiond
      t.string :answer

      t.timestamps
    end
  end
end
