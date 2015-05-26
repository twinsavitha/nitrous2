class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :question
      t.string :optiona
      t.string :optionb
      t.string :optionc
      t.string :optiond

      t.timestamps
    end
  end
end
