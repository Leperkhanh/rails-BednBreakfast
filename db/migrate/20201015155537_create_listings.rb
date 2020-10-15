class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :price
      t.string :bedroom
      t.string :bathroom
      t.string :address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
