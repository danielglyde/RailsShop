class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.decimal :price, :precision => 15, :scale => 2
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
