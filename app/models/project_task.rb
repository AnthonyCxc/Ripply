class ProjectTask < ApplicationRecord
  belongs_to :projects
  has_many :users
end
