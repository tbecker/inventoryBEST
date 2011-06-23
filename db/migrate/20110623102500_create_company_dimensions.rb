class CreateCompanyDimensions < ActiveRecord::Migration
  def self.up
    create_table :company_dimensions do |t|
      t.string :name
      t.string :reference
      t.string :industry
      t.string :segment

      t.timestamps
    end
  end

  def self.down
    drop_table :company_dimensions
  end
end
