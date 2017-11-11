class CreateProjectTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :project_tasks do |t|
      t.string :task_title
      t.string :task_description
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :approved_by_admin
      t.boolean :approved_by_pto
      t.timestamps
    end
  end
end
