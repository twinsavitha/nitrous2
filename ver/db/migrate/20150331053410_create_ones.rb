class CreateOnes < ActiveRecord::Migration
  def change
    create_table :ones do |t|
      t.float :versionnumber
      t.string :incident
      t.string :modifications

      t.timestamps
    end
  end
end
