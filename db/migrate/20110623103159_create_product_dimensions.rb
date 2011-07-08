class CreateProductDimensions < ActiveRecord::Migration
  def self.up
    create_table :product_dimensions do |t|
      t.references :company_dimension
      t.string :name
      t.string :reference
      t.string :type
      t.string :source
      t.string :product_line
      t.string :classification
      t.decimal :price, :precision => 10, :scale => 2
    end
  end

  def self.down
    drop_table :product_dimensions
  end
end
