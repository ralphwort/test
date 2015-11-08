class AddStatementIdToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :statement_id, :integer
  end
end
