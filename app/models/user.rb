class User < ApplicationRecord
	has_many :donations
	has_many :project_tasks
end
