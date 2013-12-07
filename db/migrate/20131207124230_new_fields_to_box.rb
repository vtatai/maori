class NewFieldsToBox < ActiveRecord::Migration
  def self.up
    change_table :boxes do |t|
      t.string :tracking_code
      t.datetime :post_date
      t.string :status, :null => false, :default => 'PACKED'
      t.change :description, :string, :null => false
    end
  end

  def self.down
    change_table :boxes do |t|
      t.remove_column :tracking_code, :post_date, :status
      t.change :description, :string, :null => true
    end
  end
end
