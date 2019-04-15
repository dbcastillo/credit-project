class RemoveOutstandingbalanceToCreditcards < ActiveRecord::Migration[5.2]
  def change
    remove_column :creditcards, :outstandingbalance
  end
end
