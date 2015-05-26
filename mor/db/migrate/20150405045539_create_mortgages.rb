class CreateMortgages < ActiveRecord::Migration
  def change
    create_table :mortgages do |t|
      t.string :folio
      t.string :schemecat
      t.string :scheme
      t.string :distopt
      t.string :arncode
      t.string :invamount
      t.string :payoption
      t.string :paybank

      t.timestamps
    end
  end
end
