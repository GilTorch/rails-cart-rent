class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :classification_id
      t.integer :brand_id
      t.integer :user_id
    end
  end
end
