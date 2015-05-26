class CreateVarietyys < ActiveRecord::Migration
  def change
    create_table :varietyys do |t|
      t.string :versionn
      t.string :eventt
      t.string :changge

      t.timestamps
    end
  end
end
