class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :day
      t.string :week
      t.string :month
      t.string :day_battle
      t.string :com_battle
      t.string :rare_battle

      t.timestamps
    end
  end
end
