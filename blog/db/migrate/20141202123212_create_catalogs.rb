class CreateCatalogs < ActiveRecord::Migration
  
  def change
    create_table :catalogs do |t|
      t.text :cats

      t.timestamps
    end
  end
end
