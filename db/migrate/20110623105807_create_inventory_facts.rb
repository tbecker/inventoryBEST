class CreateInventoryFacts < ActiveRecord::Migration
  def self.up
    create_table :inventory_facts do |t|
      t.references :company_dimension
      t.references :date_dimension
      t.references :product_dimension
      t.references :warehouse_dimension
      t.decimal :quantity
      t.decimal :value,:precision => 10, :scale => 2
      t.string :unit_of_measure
      t.timestamps
    end
    change_table :inventory_facts do |t|
      t.index :company_dimension_id
      t.index :date_dimension_id
      t.index :product_dimension_id
      t.index :warehouse_dimension_id
    end
  end

  def self.down
    drop_table :inventory_facts
  end
end
