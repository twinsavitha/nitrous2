class CreateSeconds < ActiveRecord::Migration
  def change
    create_table :seconds do |t|
      t.string :event
      t.string :changes

      t.timestamps
    end
  end
end
