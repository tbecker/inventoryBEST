class InventoryFact < ActiveRecord::Base
  belongs_to :company_dimension
  belongs_to :date_dimenension
  belongs_to :product_dimension
  belongs_to :warehouse_dimension
end
