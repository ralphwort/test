class AddStatementIdToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :statement_id, :integer
  end
end
