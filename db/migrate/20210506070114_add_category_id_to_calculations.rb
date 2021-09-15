class AddCategoryIdToCalculations < ActiveRecord::Migration[6.1]
  def change
    add_column :calculations, :category_id, :reference
  end
end
