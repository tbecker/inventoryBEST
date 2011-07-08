class AddIndices < ActiveRecord::Migration
  def self.up
    change_table :company_dimensions do |t|
      t.index :reference
    end

    change_table :product_dimensions do |t|
      t.index :reference
    end

    change_table :warehouse_dimensions do |t|
      t.index :reference
    end
  end

  def self.down
  end
end
