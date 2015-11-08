class CreateBuyAndKeeps < ActiveRecord::Migration
  def change
    create_table :buy_and_keeps do |t|
      t.string :title
      t.float :cost

      t.timestamps null: false
    end
  end
end
