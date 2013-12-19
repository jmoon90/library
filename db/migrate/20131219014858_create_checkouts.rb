class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id
      t.boolean :available

      t.timestamps
    end
  end
end
