class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :project_title
      t.string :project_description
      t.belongs_to :approved_by_admin, foreign_key: true
      t.belongs_to :approved_by_pto, foreign_key: true
      t.integer :cause_status
      t.string :pictures

      t.timestamps
    end
  end
end
