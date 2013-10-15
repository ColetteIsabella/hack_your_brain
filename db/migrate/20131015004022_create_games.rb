class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :day
      t.string :week
      t.string :month
      t.string :day_struggle
      t.string :com_struggle
      t.string :some_struggle

      t.timestamps
    end
  end
end
