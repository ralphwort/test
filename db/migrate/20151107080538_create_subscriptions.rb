class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :sub_type
      t.string :name
      t.float :cost

      t.timestamps null: false
    end
  end
end
