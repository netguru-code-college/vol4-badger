class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :link
      t.boolean :completed
      t.string :type
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
