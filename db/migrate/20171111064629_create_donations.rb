class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.belongs_to :user_id, foreign_key: true
      t.belongs_to :cause_id, foreign_key: true
      t.bigint :donation_amount
      t.bigint :vote

      t.timestamps
    end
  end
end
