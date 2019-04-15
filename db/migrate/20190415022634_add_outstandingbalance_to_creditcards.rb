class AddOutstandingbalanceToCreditcards < ActiveRecord::Migration[5.2]
  def change
    add_column :creditcards, :outstandingbalance, :integer
  end
end
