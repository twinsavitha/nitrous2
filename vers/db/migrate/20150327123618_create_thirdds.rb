class CreateThirdds < ActiveRecord::Migration
  def change
    create_table :thirdds do |t|
      t.string :eve
      t.string :modi

      t.timestamps
    end
  end
end
