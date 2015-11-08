class AddStatementIdToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :statement_id, :integer
  end
end
