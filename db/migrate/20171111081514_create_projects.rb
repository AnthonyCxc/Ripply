class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :project_title
      t.string :project_description
      t.integer :project_status # 0: waiting for approval, 1:voting, 2:work in-progress, 3:completed
      t.string :pictures
      t.boolean :approved_by_admin
      t.boolean :approved_by_pto

      t.timestamps
    end
  end
end
