class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.string :contact

      t.timestamps
    end
  end
end
