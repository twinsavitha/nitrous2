class CreateFirsstts < ActiveRecord::Migration
  def change
    create_table :firsstts do |t|
      t.string :one
      t.string :two

      t.timestamps
    end
  end
end
