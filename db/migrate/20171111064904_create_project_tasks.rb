class CreateProjectTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :project_tasks do |t|
      t.belongs_to :project_id, foreign_key: true
      t.belongs_to :user_id, foreign_key: true
      t.string :task_title
      t.string :task_description
      t.belongs_to :approved_by_admin, foreign_key: true
      t.belongs_to :approved_by_pto, foreign_key: true

      t.timestamps
    end
  end
end
