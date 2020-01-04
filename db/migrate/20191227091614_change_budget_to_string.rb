class ChangeBudgetToString < ActiveRecord::Migration[5.2]
  def change
    change_column :customers, :budget, :string
  end
end
