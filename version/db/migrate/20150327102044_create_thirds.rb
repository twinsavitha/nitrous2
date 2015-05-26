class CreateThirds < ActiveRecord::Migration
  def change
    create_table :thirds do |t|
      t.string :event
      t.string :changes

      t.timestamps
    end
  end
end
