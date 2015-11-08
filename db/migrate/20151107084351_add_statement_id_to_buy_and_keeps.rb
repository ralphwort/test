class AddStatementIdToBuyAndKeeps < ActiveRecord::Migration
  def change
    add_column :buy_and_keeps, :statement_id, :integer
  end
end
