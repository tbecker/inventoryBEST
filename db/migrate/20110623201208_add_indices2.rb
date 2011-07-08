class AddIndices2 < ActiveRecord::Migration
  def self.up
    change_table :date_dimensions do |t|
      t.index :full_date
    end
  end

  def self.down
  end
end
