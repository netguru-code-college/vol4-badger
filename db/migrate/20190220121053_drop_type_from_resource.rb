class DropTypeFromResource < ActiveRecord::Migration[5.2]
  def change
  	remove_column :resources, :type
  end
end
