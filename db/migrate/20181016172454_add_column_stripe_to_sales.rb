class AddColumnStripeToSales < ActiveRecord::Migration[5.2]
  def up
    add_column :sales, :stripe_charge_id, :string
    change_column :sales, :stripe_charge_id, :string, null: false
  end

  def down
    remove_column :sales, :stripe_charge_id, :string
  end
end
