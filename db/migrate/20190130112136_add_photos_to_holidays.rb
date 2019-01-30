class AddPhotosToHolidays < ActiveRecord::Migration[5.1]
  def change
    add_column :holidays, :photos, :string
  end
end
