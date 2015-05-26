class CreateMortgags < ActiveRecord::Migration
  def change
    create_table :mortgags do |t|
      t.integer :folio
      t.string :schemecat
      t.string :scheme
      t.string :distopt
      t.string :arncode
      t.integer :invamount
      t.string :payoption
      t.string :paybank

      t.timestamps
    end
  end
end
