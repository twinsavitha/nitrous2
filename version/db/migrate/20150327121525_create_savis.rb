class CreateSavis < ActiveRecord::Migration
  def change
    create_table :savis do |t|
      t.string :eve
      t.string :modi

      t.timestamps
    end
  end
end
