class AddOutstandingbalanceToCharges < ActiveRecord::Migration[5.2]
  def change
    add_column :charges, :outstandingbalance, :integer
  end
end
