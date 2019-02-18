class CreateStudentCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :student_categories do |t|

      t.timestamps
      t.integer :category_id
      t.integer :student_id
    end
  end
end
