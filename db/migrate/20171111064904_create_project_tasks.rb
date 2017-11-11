class CreateProjectTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :project_tasks do |t|
      t.belongs_to :project, index: true,foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.string :task_title
      t.string :task_description
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
