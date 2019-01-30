class CreatePricetypes < ActiveRecord::Migration[5.1]
  def change
    create_table :pricetypes do |t|
      t.string :title
      t.integer :holiday_id

      t.timestamps
    end
  end
end
