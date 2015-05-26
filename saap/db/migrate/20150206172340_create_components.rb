class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :product
      t.string :platform
      t.string :servername

      t.timestamps
    end
  end
end
