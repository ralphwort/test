class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :title
      t.float :cost

      t.timestamps null: false
    end
  end
end
