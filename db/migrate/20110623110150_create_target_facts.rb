class CreateTargetFacts < ActiveRecord::Migration
  def self.up
    create_table :target_facts do |t|
      t.references :company_dimension
      t.references :date_dimenension
      t.string :product_type
      t.decimal :target_amount
      t.string :unit_of_measure

      t.timestamps
    end
  end

  def self.down
    drop_table :target_facts
  end
end
