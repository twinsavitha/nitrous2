class CreateSecondds < ActiveRecord::Migration
  def change
    create_table :secondds do |t|
      t.string :eve
      t.string :modi

      t.timestamps
    end
  end
end
