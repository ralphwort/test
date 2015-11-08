class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.datetime :generated
      t.datetime :due
      t.datetime :from
      t.datetime :to

      t.timestamps null: false
    end
  end
end
