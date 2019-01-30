class CreateTourComments < ActiveRecord::Migration[5.1]
  def change
    create_table :tour_comments do |t|
      t.integer :holiday_id
      t.integer :user_id
      t.string :body

      t.timestamps
    end
  end
end
