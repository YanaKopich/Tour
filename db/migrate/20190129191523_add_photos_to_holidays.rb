class AddPhotosToHolidays < ActiveRecord::Migration[5.1]
  def change
    add_column :holidays, :photo, :string
  end
end
