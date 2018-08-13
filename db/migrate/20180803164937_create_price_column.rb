class CreatePriceColumn < ActiveRecord::Migration[5.2]
  def change
    create_table :price_columns do |t|
      t.string :price
    end
  end
end
