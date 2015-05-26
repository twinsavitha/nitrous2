class CreateOnes < ActiveRecord::Migration
  def change
    create_table :ones do |t|
      t.string :thing
      t.string :chee

      t.timestamps
    end
  end
end
