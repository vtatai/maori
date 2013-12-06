class CreateBoxes < ActiveRecord::Migration
  def self.up
    create_table :boxes do |t|
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :boxes
  end
end
