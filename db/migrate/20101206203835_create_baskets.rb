class CreateBaskets < ActiveRecord::Migration
  def self.up
    create_table :baskets do |t|
      t.integer :product_id
      t.integer :count
      t.timestamps
    end
  end

  def self.down
    drop_table :baskets
  end
end
