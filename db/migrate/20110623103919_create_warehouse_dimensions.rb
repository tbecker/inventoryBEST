class CreateWarehouseDimensions < ActiveRecord::Migration
  def self.up
    create_table :warehouse_dimensions do |t|
      t.references :company_dimension
      t.string :name
      t.string :reference
      t.string :type
    end
  end

  def self.down
    drop_table :warehouse_dimensions
  end
end
