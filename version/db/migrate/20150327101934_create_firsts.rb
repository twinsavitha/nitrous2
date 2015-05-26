class CreateFirsts < ActiveRecord::Migration
  def change
    create_table :firsts do |t|
      t.string :event
      t.string :changes

      t.timestamps
    end
  end
end
