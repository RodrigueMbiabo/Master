class CreateCalculation < ActiveRecord::Migration[6.1]
  def change
    create_table :calculations do |t|
      t.integer :argument1
      t.integer :argument2
      t.string :operand
      t.timestamps
    end
  end
end
