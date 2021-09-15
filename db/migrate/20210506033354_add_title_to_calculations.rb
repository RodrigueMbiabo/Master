class AddTitleToCalculations < ActiveRecord::Migration[6.1]
  def change
    add_column :calculations, :title, :string
  end
end
