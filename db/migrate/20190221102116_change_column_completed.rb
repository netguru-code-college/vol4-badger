class ChangeColumnCompleted < ActiveRecord::Migration[5.2]
  def change
    remove_column :resources, :completed 
    add_column :resources, :completed, :boolean, default: false
  end
end
