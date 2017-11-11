class ProjectTask < ApplicationRecord
  belongs_to :project_id
  belongs_to :user_id
  belongs_to :approved_by_admin
  belongs_to :approved_by_pto
end
