class CreateDateDimensions < ActiveRecord::Migration
  def self.up
    create_table :date_dimensions do |t|
      t.datetime :full_date
      t.integer :day
      t.integer :month
      t.integer :year
      t.integer :week
      t.integer :quarter
      t.integer :weekday
      t.string :week_label
      t.string :month_label
      t.string :weekday_label
    end
  end

  def self.down
    drop_table :date_dimensions
  end
end
