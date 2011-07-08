class CreateInventoryTransactionFacts < ActiveRecord::Migration
  def self.up
    create_table :inventory_transaction_facts do |t|
      t.references :company_dimension
      t.references :date_dimenension
      t.references :product_dimension
      t.references :warehouse_dimension
      t.decimal :quantity,:precision => 10, :scale => 2
      t.decimal :value, :precision => 10, :scale => 2
      t.string :unit_of_measure

      t.timestamps
    end
  end

  def self.down
    drop_table :inventory_transaction_facts
  end
end
