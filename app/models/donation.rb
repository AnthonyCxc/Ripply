class Donation < ApplicationRecord
  belongs_to :user_id
  belongs_to :cause_id
end
