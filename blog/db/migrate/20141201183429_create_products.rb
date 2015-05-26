class CreateProducts < ActiveRecord::Migration
  
  def change
    create_table :products do |t|
    t.text :landscape
    end
  end
end
