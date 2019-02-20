class RenameRoleToAuthor < ActiveRecord::Migration[5.2]
  def change
  	rename_column :course_students, :role, :author
  end
end
