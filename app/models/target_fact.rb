class TargetFact < ActiveRecord::Base
  belongs_to :company_dimension
  belongs_to :date_dimenension
end
