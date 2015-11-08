class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :called
      t.string :duration
      t.float :cost

      t.timestamps null: false
    end
  end
end
