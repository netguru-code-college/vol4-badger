class ChangeTypeOfDescription < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :description 
    add_column :courses, :description, :text
  end
end
