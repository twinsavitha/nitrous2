class CreateFirstts < ActiveRecord::Migration
  def change
    create_table :firstts do |t|
      t.string :eve
      t.string :modi

      t.timestamps
    end
  end
end
