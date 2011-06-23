class CreateProductMasterFacts < ActiveRecord::Migration
  def self.up
    create_table :product_master_facts do |t|
      t.references :company_dimension
      t.string :name
      t.string :reference
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :product_master_facts
  end
end
