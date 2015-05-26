class CreateSaps < ActiveRecord::Migration
  
  def change
    create_table :saps do |t|
      t.integer :Catalog_id
      t.text :sapproduct
      t.text :platform
      t.text :saps
      t.text :mem
      t.text :iops
      t.text :disksize

      t.timestamps
    end
  end
end
