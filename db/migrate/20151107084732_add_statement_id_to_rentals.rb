class AddStatementIdToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :statement_id, :integer
  end
end
