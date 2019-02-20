class AddRoleToCourseStudents < ActiveRecord::Migration[5.2]
  def change
  	add_column :course_students, :role, :boolean
  end
end