class CreateHolidays < ActiveRecord::Migration[5.1]
  def change
    create_table :holidays do |t|
      t.string :name
      t.integer :price
      t.string :pricetype_id
      t.string :description
      t.string :contacts
      t.integer :user_id

      t.timestamps
    end
  end
end
