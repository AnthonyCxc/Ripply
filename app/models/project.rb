class Project < ApplicationRecord
  belongs_to :approved_by_admin
  belongs_to :approved_by_pto
end
